
//hot_water_consumption_chart

var hot_water_consumption_chart = new RGraph.Bar('hot_water_consumption_chart', getchartvalues('hot_water_consumption_table',4,'volumeStream','flowTemperature','returnTemperature','processTemperature'))
    .Set('grouping', 'stacked')
    .Set('labels',getdates('hot_water_consumption_table'))
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
    //.Set('noyaxis', true)
    .Set('gutter.left',60)
    .Set('key', ['Volumenstrom','Vorlauftemperatur','Rücklauftemperatur','Prozesstemperatur'])
   // .Set('key.position', 'gutter');
hot_water_consumption_chart.Set('key.position.x', hot_water_consumption_chart.canvas.width - 138)
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

hot_water_consumption_chart.Draw();

//hot_water_production_chart

var hot_water_production_chart= new RGraph.Bar('hot_water_production_chart', getchartvalues('hot_water_production_table',10,"fuelConsumption","kettleEnergyConsumption","operationHours","kettleExitCompression","kettleExitTemperature","tempAdditionalWater","tempCombustionAir","tempExhaustBeforeWRG","tempExhaustAfterWRG","carbonDioxideExhaust"))
    .Set('grouping', 'stacked')
    .Set('labels',getchartvalues('hot_water_production_table',1,'year'))
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
    .Set('key', ['Brennstoffverbrauch','Jahresverbrauch','Betriebsstunden','Druck Kesselaustritt','Kesselaustritt','Zusätzliches Wasser','Verbrennungsluft','Abgas vor WRG','Abgas nach WRG','O2-Regelung'])
// .Set('key.position', 'gutter');
hot_water_production_chart.Set('key.position.x', hot_water_production_chart.canvas.width - 178)
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

hot_water_production_chart.Draw();


//hot_water_distribution_chart


var hot_water_distribution_chart = new RGraph.Bar('hot_water_distribution_chart', getchartvalues('hot_water_distribution_table',3,"compression","flowTemperature","returnTemperature"))
    .Set('grouping', 'stacked')
    .Set('labels',getdates('hot_water_distribution_table'))
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
    .Set('key', ['Druck','Vorlauftemperatur','Rücklauftemperatur'])
    //.Set('key.position', 'gutter');
hot_water_distribution_chart.Set('key.position.x', hot_water_distribution_chart.canvas.width - 138)
    .Set('key.position.y', 2)
    .Set('key.background','white')
    .Set('key.colors', ['green','blue','grey'])

    .ondraw = function (obj)
{
    for (var i=0; i<obj.coords.length; ++i) {
        obj.context.fillStyle = 'white';
        RGraph.Text(obj.context, 'Verdana', 10, obj.coords[i][0] + (obj.coords[i][2] / 2), obj.coords[i][1] + (obj.coords[i][3] / 2),obj.data_arr[i].toString(),'center', 'center', null,null,null,true);
    }
}

hot_water_distribution_chart.Draw();
