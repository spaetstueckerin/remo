


//compressed_air_consumption_chart
var compressed_air_consumption_chart = new RGraph.Bar('compressed_air_consumption_chart', getvaluebargroup('compressed_air_consumption_table','consumer'))
    //.Set('colors', ['#2A17B1', '#98ED00'])
    .Set('labels', getcommon('compressed_air_consumption_table','year'))
    .Set('labels.above', true)
    .Set('labels.above.decimals', 2)
    .Set('numyticks', 5)
    .Set('gutter.left',60)
    .Set('variant', '3d')
    .Set('strokestyle', 'white')
    .Set('hmargin.grouped', 0)
    .Set('scale.round', true)
    .Set('key', getcommon('compressed_air_consumption_table','consumer'))
    compressed_air_consumption_chart.Set('key.position.x', compressed_air_consumption_chart.canvas.width - 138)
    .Set('key.position.y', 2)
    .Set('key.background','white')
    .Draw();


//compressed_air_production




var compressed_air_production_chart= new RGraph.Bar('compressed_air_production_chart', getchartvalues('compressed_air_production_years',13,"operatingHours","loadHours","capacity","energyConsumption","deliveryRate","operatingCycles","overtravelTimeIdle","pressureMin","pressureExhaustTempMin","pressureExhaustTempMax","advanceTemp","returnTemp","amount_water"))
    .Set('grouping', 'stacked')
    .Set('labels',getchartvalues('compressed_air_production_years',1,'year'))
    .Set('labels.above', true)
    .Set('labels.above.decimals', 2)
    .Set('ylabels',true)
    .Set('linewidth', 2)
    .Set('strokestyle', 'white')
    .Set('colors', ['green','blue','grey','orange','red','black','aquamarine','violet','pink','blueviolet', 'brown','chartreuse','cornflowerblue'])
    .Set('shadow', true)
    .Set('shadow.offsetx', 1)
    .Set('shadow.offsety', 1)
    .Set('shadow.blue', 5)
    .Set('hmargin', 25)
    .Set('gutter.left', 45)
    .Set('background.grid.vlines', false)
    .Set('background.grid.border', false)
    .Set('gutter.left',60)
    .Set('axis.color', '#ccc')
    .Set('noyaxis', true)
    .Set('key', ['Betriebsstunden(h)','Laststunden(h)','Auslastung(%)','Stromverbrauch(kWh)','Fördermenge(l)','Schalthäufigkeit','Nachlaufzeit(Leerlauf)','Minimaldruck','Druckluftansaugung(min)','Druckluftansaugung(max)','Kühlwasservorlauf(°C)','Kühlwasserrücklauf(°C)','Wassermenge(l)'])
   // .Set('key.position', 'gutter');
    compressed_air_production_chart.Set('key.position.x', compressed_air_production_chart.canvas.width - 178)
    .Set('key.position.y', 2)
    .Set('key.background','white')
    .Set('key.colors', ['green','blue','grey','orange','red','black','aquamarine','violet','pink','blueviolet', 'brown','chartreuse','cornflowerblue'])

    .ondraw = function (obj)
{
    for (var i=0; i<obj.coords.length; ++i) {
        obj.context.fillStyle = 'white';
        RGraph.Text(obj.context, 'Verdana', 10, obj.coords[i][0] + (obj.coords[i][2] / 2), obj.coords[i][1] + (obj.coords[i][3] / 2),obj.data_arr[i].toString(),'center', 'center', null,null,null,true);
    }
}

compressed_air_production_chart.Draw();

//compressed_air_distribution_chart
var compressed_air_distribution_chart= new RGraph.Bar('compressed_air_distribution_chart', getchartvalues('compressed_air_distribution',2,"leak","pressureLoss"))
    .Set('grouping', 'stacked')
    .Set('labels',getchartvalues('compressed_air_distribution',1,'year'))
    .Set('labels.above', true)
    .Set('labels.above.decimals', 2)
    .Set('ylabels',true)
    .Set('linewidth', 2)
    .Set('strokestyle', 'white')
    .Set('colors', ['green','blue'])
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
    .Set('key', ['Leckagen(%)','Druckverlust(bar)'])
   // .Set('key.position', 'gutter');
compressed_air_distribution_chart.Set('key.position.x', compressed_air_distribution_chart.canvas.width - 138)
    .Set('key.position.y', 2)
    .Set('key.background','white')
    .Set('key.colors', ['green','blue'])

    .ondraw = function (obj)
{
    for (var i=0; i<obj.coords.length; ++i) {
        obj.context.fillStyle = 'white';
        RGraph.Text(obj.context, 'Verdana', 10, obj.coords[i][0] + (obj.coords[i][2] / 2), obj.coords[i][1] + (obj.coords[i][3] / 2),obj.data_arr[i].toString(),'center', 'center', null,null,null,true);
    }
}

compressed_air_distribution_chart.Draw();


