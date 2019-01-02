//Когда документ загрузился в браузер
//$(document).ready(function() {

var accountTemplate;
var billTemplate;
var billAtRateTemplate;
var billOnCounterTemplate;

var heatBillData = {};
var waterBillData = {};

var nowDate = new Date();
var prevDate = new Date();
var beforePrevDate = new Date();
prevDate.setMonth(prevDate.getMonth() - 1);
beforePrevDate.setMonth(beforePrevDate.getMonth() - 2);
var dateFormatOptions = {
  year: 'numeric',
  month: 'long',
  timezone: 'UTC'
};
var dateFormatOnlyMonthOptions = {
  month: 'long',
  timezone: 'UTC'
};
var nowMonth = nowDate.toLocaleString("ru", dateFormatOnlyMonthOptions);
var nowMonthYear = nowDate.toLocaleString("ru", dateFormatOptions);
var prevMonth = prevDate.toLocaleString("ru", dateFormatOptions);
var beforePrevMonth = beforePrevDate.toLocaleString("ru", dateFormatOptions);

var currentLang =
	($('body').attr('lang') === 'ua') ? 'uk' : $('body').attr('lang');

if($('#websigninfrm').length > 0){

	var signInFormValidate = function(){

		$('#websigninfrm').validate({
	        rules: {
	        	code: {
	                required: true
	                , minlength: 6
	                , maxlength: 6
	                , digits: true
	            },
	            surname: {
	            	required: true
	            }
	        },
	        lang: currentLang
	        /*messages: {
	        	code: {
	                required: "Required"
	                , minlength: "Enter six (6) digits please"
	                , maxlength: "Enter six (6) digits please"
	                , digits: "Enter only digits please"
	            },
	        	surname: {
	                required: "Required"
	            }
	        }*/
	    });
	};

	signInFormValidate();

	var signInSubmit = function(init){

		if ($('#websigninfrm').valid() || init == "init") {

			//var formData = $('#websigninfrm').serializeArray();
			//formData.push({name: 'action', value: 'fetch-by-id'});
        	//console.log(formData);

        	$.ajax({
	            url: "/accounts",
	            dataType: 'json',
	            type: "POST",
	            data: {
	            	'action': 'fetch-all-by-id'
	            	, 'code': $('#websigninfrm').find('#code').val()
	            	, 'surname': encodeURIComponent($('#websigninfrm').find('#surname').val())
	            	, 'lang': $('body').attr('lang')
	            	//, 'surname': $('#websigninfrm').find('#surname').val()
	            },
	            cache : false
	        }).done(function(resp) {
	        	
	        	if (resp == "not_found") {

	        		alert("account not found");
	        	} else if (resp == "no_session") {

	        	} else {

	        		for (var i = 0; i < resp.accountBills.length; i++) {
					    
					    if (resp.accountBills[i].typeId == 21
					    	|| resp.accountBills[i].typeId == 22) {


					    	heatBillData = {
			        			'prevMonth' : prevMonth,
			        			'accountCode' : resp.accountDetails.code,
			        			'fio' : resp.accountDetails.fio,
			        			'address' : resp.accountDetails.address,
			        			'titleLong' : resp.accountBills[i].titleLong,
			        			'titleShort' : resp.accountBills[i].titleShort,
			        			'volume' : resp.accountBills[i].volume,
			        			'tariff' : resp.accountBills[i].tariff,
			        			'amountToBePaid' : resp.accountBills[i].amountToBePaid,
			        			'heatedArea' : resp.accountBills[i].heatedArea,
			        			'tenantCount' : resp.accountDetails.tenantCount,
			        			'nowMonth' : nowMonth
			        		};

			        		console.log(heatBillData);
					    } else if (resp.accountBills[i].typeId == 11
					    	|| resp.accountBills[i].typeId == 12) {


					    	var lastPayment = resp.accountPayments.filter(p => p.service == 'Горячая вода');
					    	var lastPaymentDate = "";
					    	var lastPaymentSum = "";
					    	if (lastPayment.length > 0) {
					    		lastPaymentDate = lastPayment[0].dateaction;
					    		lastPaymentSum = lastPayment[0].summ;
					    	}

					    	waterBillData = {
			        			'prevMonth' : prevMonth,
			        			'accountCode' : resp.accountDetails.code,
			        			'fio' : resp.accountDetails.fio,
			        			'address' : resp.accountDetails.address,
			        			'titleLong' : resp.accountBills[i].titleLong,
			        			'titleShort' : resp.accountBills[i].titleShort,
			        			'volume' : resp.accountBills[i].volume,
			        			'tariff' : resp.accountBills[i].tariff,
			        			'amountToBePaid' : resp.accountBills[i].amountToBePaid,
			        			'heatedArea' : resp.accountBills[i].heatedArea,
			        			'tenantCount' : resp.accountDetails.tenantCount,
			        			'beginMeter' : resp.accountBills[i].beginMeter,
			        			'endMeter' : resp.accountBills[i].endMeter,
			        			'lastPaymentDate' : lastPaymentDate,
			        			'lastPaymentSum' : lastPaymentSum,
			        			'nowMonthYear' : nowMonthYear
			        		};
					    }
					}

	        		$.get('/template/templates/account-template.hogan', function(templates){
	        			
			            accountTemplate = $(templates).find('#account-template').html();
			            //billTemplate = $(templates).find('#bill-template').html();
			            billAtRateTemplate = $(templates).find('#bill-at-rate-template').html();
			            billOnCounterTemplate = $(templates).find('#bill-on-counter-template').html();
			            billOnWaterCounterTemplate = $(templates).find('#bill-on-water-counter-template').html();
			            //console.log(billTemplate);
			            var template = Hogan.compile(accountTemplate);

			            /*resp[dataInfo] = {
							'nowMonth' : nowMonth
						};*/
						/*resp[currentData] = {
							'prevDate' : prevDate.toLocaleString("ru", dateFormatOptions),
							'beforePrevDate' : beforePrevDate.toLocaleString("ru", dateFormatOptions)
						};*/
						//console.log(prevDate.toLocaleString("ru", dateFormatOptions));
						//console.log(beforePrevDate.toLocaleString("ru", dateFormatOptions));

			            var rendered = template.render(resp);
			            $('#account-container').html(rendered);

			            //console.log($('#bill-section').find('#prevMonth'));
			            //console.log($('#bill-section').find('#beforePrevMonth'));
			            $('#prevMonth').text(prevDate.toLocaleString("ru", dateFormatOptions));
			            $('#beforePrevMonth').text(beforePrevDate.toLocaleString("ru", dateFormatOptions));

			            $("#logout").click(function(ev){
							ev.preventDefault();
							$.ajax({
						            url: "/accounts",
						            dataType: 'json',
						            type: "POST",
						            data: {
						            	'action': 'logout'
						            },
						            cache : false
						        }).done(function(resp) {

						        	if (resp == "logout") {

						        		window.location = "/";
						        	}
						        });
						});

						function printBill(type, kind){

							var template;
							var data;

							switch (type) {
							  case 21:
							  	data = heatBillData;
							    template = Hogan.compile(billAtRateTemplate);
							    break;
							  case 22:
							  	data = heatBillData;
							    template = Hogan.compile(billOnCounterTemplate);
							    break;
							  case 11:
							  	data = waterBillData;
							    template = Hogan.compile("");
							    break;
							  case 12:
							  	data = waterBillData;
							    template = Hogan.compile(billOnWaterCounterTemplate);
							    break;
							  default:
							    //template = Hogan.compile(billTemplate);
							}

							if (kind == 'empty') {data = {};}

							var rendered = template.render(data);

							var WinPrint = null;
							WinPrint = window.open('','','');
							if(WinPrint != null)
							{
					  			WinPrint.document.write(rendered);
							}
						}

						$("input[name=print-bill]").click(function(ev){

							ev.preventDefault();
							printBill($(this).data('type'), 'filled');
						});

						$("input[name=print-empty-bill]").click(function(ev){

							ev.preventDefault();
							printBill($(this).data('type'), 'empty');
						});


						//Логика вкладки отправки показаний счетчиков

						//Валидация поля ввода показаний счетчика
						jQuery.validator.addMethod("float", function(value, element) {
						  	// allow any floating point values
						  	return this.optional( element ) || /^[0-9]{1,}\.[0-9]{1,}$/.test( value );
						}, 'Значение должно быть дробным, записанным через точку');

						var meterValueFormValidate = function(){

							$('#add-meter-value').validate({
						        rules: {
						        	"meter-value": {
						                required: true
						                , float: true
						            }
						        },
						        lang: currentLang
						    });
						};

						meterValueFormValidate();

						//Calendar preparations
						//Добавляем к стандартному типу Дата функцию коррекции даты по часовому поясу
					    Date.prototype.toDateInputValue = (function() {
					        var local = new Date(this);
					        local.setMinutes(this.getMinutes() - this.getTimezoneOffset());
					        return local.toJSON().slice(0,10);
					    });
					    //Устанавливаем в элемент ввода Дата (Календарь) текущую дату,
					    //вызывая на ней предварительно нашу корректирующую функцию
						$('#meter-value-calendar').val(new Date().toDateInputValue());

						function sendMeterValue(){
							$.ajax({
					            url: "/accounts",
					            type: "POST",
					            dataType: 'json',
					            data: { 
					                'action': 'add-meter-value'
					                , 'date': $('#meter-value-calendar').val()
					                , 'service-id': $('#service-type-select option:selected').val()
					                , 'meter-value': $('#meter-value').val()
					            },
					            cache : false
					        }).done(function(data) {
					            
					            //TODO success message
							});
						}

						//Обработчик события "отправка формы"
					    $('#add-meter-value').submit(function (ev) {

					        //Предотвращение отправки формы
							ev.preventDefault();
							
							if ($(this).valid()) {
								sendMeterValue();
							}
						});

					}, 'html');
	        	}
	        	//$('#websigninfrm').find('#code').val('');
	        	//$('#websigninfrm').find('#surname').val('');
			});
	    }
	};

	var onSignInSubmit = function(ev){

		ev.preventDefault();

		signInSubmit();
	};

	$('#websigninfrm').submit(onSignInSubmit);

	signInSubmit('init');
}
//});