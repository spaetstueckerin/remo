
var steam_production_chart= new RGraph.Bar('steam_production_chart', getchartvalues('steam_production_table',11,"fuelConsumption","kettleEnergyConsumption","operationHours","kettleSteamParameterBar","kettleSteamParameterCel","steamAmount","tempAdditionalWater","tempCombustionAir","tempExhaustBeforeWRG","tempExhaustAfterWRG","carbonDioxideExhaust"))
    .Set('grouping', 'stacked')
    .Set('labels',getchartvalues('steam_production_table',1,'year'))
    .Set('labels.above', true)
    .Set('labels.above.decimals', 2)
    .Set('ylabels',true)
    .Set('linewidth', 2)
    .Set('strokestyle', 'white')
    .Set('colors', ['green','blue','grey','orange','aquamarine','violet','blueviolet', 'brown','chartreuse','cornflowerblue','red'])
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
    .Set('key', ['Brennstoffverbrauch','Energieverbrauch Kessel','Betriebsstunden','Dampfparameter Kesselaustritt(bar)','Dampfparameter Kesselaustritt(°C)','Dampfmenge','Temperatur Zusatzwasser','Temperatur Verbrennungsluft','Temperatur Abgas von WRG','Temperatur Abgas nach WRG','CO2-Gehalt Abgas'])
// .Set('key.position', 'gutter');
steam_production_chart.Set('key.position.x', steam_production_chart.canvas.width - 238)
    .Set('key.position.y', 2)
    .Set('key.background','white')
    .Set('key.colors', ['green','blue','grey','orange','aquamarine','violet','blueviolet', 'brown','chartreuse','cornflowerblue','red'])

    .ondraw = function (obj)
{
    for (var i=0; i<obj.coords.length; ++i) {
        obj.context.fillStyle = 'white';
        RGraph.Text(obj.context, 'Verdana', 10, obj.coords[i][0] + (obj.coords[i][2] / 2), obj.coords[i][1] + (obj.coords[i][3] / 2),obj.data_arr[i].toString(),'center', 'center', null,null,null,true);
    }
}

steam_production_chart.Draw();



//steam_distribution_chart

var steam_distribution_chart = new RGraph.Bar('steam_distribution_chart', getchartvalues('steam_distribution_table',5,"dpCompression","dpTemperature","kpCompression","kpTemperature","kpReflux"))
    .Set('grouping', 'stacked')
    .Set('labels',getdates('steam_distribution_table'))
    .Set('labels.above', true)
    .Set('labels.above.decimals', 2)
    .Set('linewidth', 2)
    .Set('strokestyle', 'white')
    .Set('colors', ['green','blue','grey','orange','chartreuse'])
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
    .Set('key', ['DP Druck','DP Temperatur','KP Druck','KP Temperatur','Kpreflux'])
    //.Set('key.position', 'gutter');
steam_distribution_chart.Set('key.position.x', steam_distribution_chart.canvas.width - 138)
    .Set('key.position.y', 2)
    .Set('key.background','white')
    .Set('key.colors', ['green','blue','grey','orange','chartreuse'])

    .ondraw = function (obj)
{
    for (var i=0; i<obj.coords.length; ++i) {
        obj.context.fillStyle = 'white';
        RGraph.Text(obj.context, 'Verdana', 10, obj.coords[i][0] + (obj.coords[i][2] / 2), obj.coords[i][1] + (obj.coords[i][3] / 2),obj.data_arr[i].toString(),'center', 'center', null,null,null,true);
    }
}

steam_distribution_chart.Draw();

