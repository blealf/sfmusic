(function(){
	var app = angular.module('trumpet', []);

	app.controller('TrumpetController', function(){
		this.trumps = valves;
	});

	var valves = [
		{
			number: 2,
			note: "G",
			value: "1,0,1"
		},
		{
			number: 3,
			note: "Ab",
			value: "0,1,1"
		}


	];

})();