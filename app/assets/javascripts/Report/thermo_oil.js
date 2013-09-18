
//"volumeStream","flowTemperature","returnTemperature","processTemperature"
//hot_water_consumption_chart
var thermo_oil_consumption_chart = new RGraph.Bar('thermo_oil_consumption_chart', getchartvalues('thermo_oil_consumption_table',4,'volumeStream','flowTemperature','returnTemperature','processTemperature'))
    .Set('grouping', 'stacked')
    .Set('labels',getdates('thermo_oil_consumption_table'))
    .Set('labels.above', true)
    .Set('labels.above.decimals', 2)
    .Set('linewidth', 2)
    .Set('strokestyle', 'white')
    .Set('colors', ['green','blue','grey','orange'])
    .Set('shadow', true)
    .Set('shadow.offsetx', 1)
    .Set('shadow.offsety', 1)
    .Set('shadow.blue', 5)
    .Set('hmargin', 25)
    .Set('gutter.left', 45)
    .Set('background.grid.vlines', false)
    .Set('background.grid.border', false)
    .Set('axis.color', '#ccc')
    .Set('noyaxis', true)
    .Set('key', ['Volumenstrom','Vorlauftemperatur','Rücklauftemperatur','Prozesstemperatur'])
    //.Set('key.position', 'gutter');
thermo_oil_consumption_chart.Set('key.position.x', thermo_oil_consumption_chart.canvas.width - 138)
    .Set('key.position.y', 2)
    .Set('key.background','white')
    .Set('key.colors', ['green','blue','grey','orange'])

    .ondraw = function (obj)
{
    for (var i=0; i<obj.coords.length; ++i) {
        obj.context.fillStyle = 'white';
        RGraph.Text(obj.context, 'Verdana', 10, obj.coords[i][0] + (obj.coords[i][2] / 2), obj.coords[i][1] + (obj.coords[i][3] / 2),obj.data_arr[i].toString(),'center', 'center', null,null,null,true);
    }
}

thermo_oil_consumption_chart.Draw();



//thermo_oil_production_chart

var thermo_oil_production_chart= new RGraph.Bar('thermo_oil_production_chart', getchartvalues('thermo_oil_pruduction_table',10,"fuelConsumption","kettleEnergyConsumption","operatingHours","kettleExitCompression","kettleExitTemperature","thermoOilAmount","tempCombustionAir","tempExhaustBeforeWRG","tempExhaustAfterWRG","carbonDioxideExhaust"))
    .Set('grouping', 'stacked')
    .Set('labels',getdates('thermo_oil_pruduction_table'))
    .Set('labels.above', true)
    .Set('labels.above.decimals', 2)
    .Set('ylabels',true)
    .Set('linewidth', 2)
    .Set('strokestyle', 'white')
    .Set('colors', ['green','blue','grey','orange','aquamarine','violet','blueviolet', 'brown','chartreuse','cornflowerblue'])
    .Set('shadow', true)
    .Set('shadow.offsetx', 1)
    .Set('shadow.offsety', 1)
    .Set('shadow.blue', 5)
    .Set('hmargin', 25)
    .Set('gutter.left', 45)
    .Set('background.grid.vlines', false)
    .Set('background.grid.border', false)
    .Set('axis.color', '#ccc')
    .Set('noyaxis', true)
    .Set('key', ['Brennstoff- verbrauch','Jahresverbrauch','Betriebsstunden','Kettleexitcompression','Kettleexittemperature','Thermooilamount','Tempcombustionair','Tempexhaustbeforewrg','Tempexhaustafterwrg','Co2-Gehalt Abgas'])
// .Set('key.position', 'gutter');
thermo_oil_production_chart.Set('key.position.x', thermo_oil_production_chart.canvas.width - 178)
    .Set('key.position.y', 2)
    .Set('key.background','white')
    .Set('key.colors', ['green','blue','grey','orange','aquamarine','violet','blueviolet', 'brown','chartreuse','cornflowerblue'])

    .ondraw = function (obj)
{
    for (var i=0; i<obj.coords.length; ++i) {
        obj.context.fillStyle = 'white';
        RGraph.Text(obj.context, 'Verdana', 10, obj.coords[i][0] + (obj.coords[i][2] / 2), obj.coords[i][1] + (obj.coords[i][3] / 2),obj.data_arr[i].toString(),'center', 'center', null,null,null,true);
    }
}

thermo_oil_production_chart.Draw();


//thermo_oil_distribution
var thermo_oil_distribution_chart = new RGraph.Bar('thermo_oil_distribution_chart', getchartvalues('thermo_oil_distribution_table',3,"compression","flowTemperature","returnTemperature"))
    .Set('grouping', 'stacked')
    .Set('labels',getdates('thermo_oil_distribution_table'))
    .Set('labels.above', true)
    .Set('labels.above.decimals', 2)
    .Set('linewidth', 2)
    .Set('strokestyle', 'white')
    .Set('colors', ['green','blue','grey','orange'])
    .Set('shadow', true)
    .Set('shadow.offsetx', 1)
    .Set('shadow.offsety', 1)
    .Set('shadow.blue', 5)
    .Set('hmargin', 25)
    .Set('gutter.left', 45)
    .Set('background.grid.vlines', false)
    .Set('background.grid.border', false)
    .Set('axis.color', '#ccc')
    .Set('noyaxis', true)
    .Set('key', ['Compression','Flowtemperature','Returntemperature'])
   // .Set('key.position', 'gutter');
thermo_oil_distribution_chart.Set('key.position.x', thermo_oil_distribution_chart.canvas.width - 138)
    .Set('key.position.y', 2)
    .Set('key.background','white')
    .Set('key.colors', ['green','blue','grey','orange'])

    .ondraw = function (obj)
{
    for (var i=0; i<obj.coords.length; ++i) {
        obj.context.fillStyle = 'white';
        RGraph.Text(obj.context, 'Verdana', 10, obj.coords[i][0] + (obj.coords[i][2] / 2), obj.coords[i][1] + (obj.coords[i][3] / 2),obj.data_arr[i].toString(),'center', 'center', null,null,null,true);
    }
}

thermo_oil_distribution_chart.Draw();
