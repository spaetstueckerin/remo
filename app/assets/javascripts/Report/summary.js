
window.onload = function ()
    {

        var year = new Array();
        var annualSales = new Array();
        var netIncome = new Array();
        var energyEfficiencyInvestment = new Array();
        var ProductCost = new Array();
        var MaxCapacity = new Array();

        //load the chart data in arrays using jquery
        var i=0;
        $('#table_business_data tbody tr').each(function() {
            year[i] = $('.year',this).text();
            annualSales[i] = parseFloat($('.annualSales',this).text());
            netIncome[i] = parseFloat($('.netIncome',this).text());
            energyEfficiencyInvestment[i] = parseFloat($('.energyEfficiencyInvestment',this).text());
            ProductCost[i] = parseFloat($('.ProductCost',this).text());
            MaxCapacity[i] = parseFloat($('.MaxCapacity',this).text());
            i++;
           });
        //defining the max value for each variable
        var max_annualsales =  annualSales[0];
        var max_netIncome = netIncome[0];
        var max_energyEfficiencyInvestment = energyEfficiencyInvestment[0];
        var max_ProductCost = ProductCost[0];

        //max for annaualsales
        for(i=0;i<annualSales.length;i++){
            if(max_annualsales<annualSales[i]){
                max_annualsales=annualSales[i];
            }
        }
        //max for netIncome
        for(i=0;i<netIncome.length;i++){
            if(max_netIncome<netIncome[i]){
                max_netIncome=netIncome[i];
            }
        }
        //max for energyEfficiencyInvestment
        for(i=0;i<energyEfficiencyInvestment.length;i++){
            if(max_energyEfficiencyInvestment<energyEfficiencyInvestment[i]){
                max_energyEfficiencyInvestment=energyEfficiencyInvestment[i];
            }
        }
        //max for max_ProductCost
        for(i=0;i<ProductCost.length;i++){
            if(max_ProductCost<ProductCost[i]){
                max_ProductCost=ProductCost[i];
            }
        }
        var gutterLeft = 250;
        var gutterRight = 10;
        var gutterTop   = 25;
        var line1 = new RGraph.Line('business_data_chart', annualSales)
                .Set('ymax', max_annualsales)
                .Set('hmargin', 80)
                .Set('gutter.right', gutterRight)
                .Set('gutter.left', gutterLeft)
                .Set('gutter.top', gutterTop)
                .Set('labels', year)
                .Set('tooltips', year)
                .Set('colors', ['red', 'green', 'blue','grey'])
                .Set('key', ['Jahresumsatz', 'Einkommen', 'Investment in Energieeffizienz','Produktionskosten'])
                .Set('key.position', 'gutter')
                //.Set('key.position.gutter.boxed', true)
                .Set('key.position.x', 100)
                .Set('key.position.y', -10)
                .Set('curvy', true)
                .Set('curvy.tickmarks', true)
                .Set('curvy.tickmarks.fill', null)
                .Set('curvy.tickmarks.stroke', '#aaa')
                .Set('curvy.tickmarks.stroke.linewidth', 2)
                .Set('curvy.tickmarks.size', 5)
                .Set('tickmarks', 'circle')
                .Set('background.grid.autofit', true)
                .Set('background.grid.autofit.numvlines', 11)
                .Set('shadow', true)
                .Set('shadow.color', 'rgba(20,20,20,0.3)')
                .Set('shadow.blur',  10)
                .Set('shadow.offsetx', 0)
                .Set('shadow.offsety', 0)
                .Set('background.grid.vlines', false)
                .Set('background.grid.border', true)
                .Set('axis.color', '#666')
                .Set('text.color', '#5e5e5e')
                .Set('linewidth', 3)
                .Set('spline', true)
                .Set('noaxes', true)
                .Set('ylabels', false)
                .Draw();

        var line2 = new RGraph.Line('business_data_chart', netIncome)
                .Set('ymax', max_netIncome)
                .Set('background.grid', false)
                .Set('colors', ['green'])
                .Set('hmargin', 85)
                .Set('gutter.right', gutterRight)
                .Set('gutter.left', gutterLeft)
                .Set('gutter.top', gutterTop)
                .Set('tooltips', year)
                .Set('ylabels', false)
                .Set('noaxes', true)
                .Set('curvy', true)
                .Set('curvy.tickmarks', true)
                .Set('curvy.tickmarks.fill', null)
                .Set('curvy.tickmarks.stroke', '#aaa')
                .Set('curvy.tickmarks.stroke.linewidth', 2)
                .Set('curvy.tickmarks.size', 5)
                .Set('tickmarks', 'circle')
                .Set('shadow', true)
                .Set('shadow.color', 'rgba(20,20,20,0.3)')
                .Set('shadow.blur',  10)
                .Set('shadow.offsetx', 0)
                .Set('shadow.offsety', 0)
                .Set('background.grid.vlines', false)
                .Set('background.grid.border', true)
                .Set('axis.color', '#666')
                .Set('text.color', '#5e5e5e')
                .Set('linewidth', 3)
                .Set('spline', true)
                .Draw();

        var line3 = new RGraph.Line('business_data_chart', energyEfficiencyInvestment)
                .Set('ymax', max_energyEfficiencyInvestment)
                .Set('background.grid', false)
                .Set('ylabels', false)
                .Set('noaxes', true)
                .Set('colors', ['blue'])
                .Set('hmargin', 85)
                .Set('gutter.right', gutterRight)
                .Set('gutter.left', gutterLeft)
                .Set('gutter.top', gutterTop)
                .Set('tooltips', year)
                .Set('curvy', true)
                .Set('curvy.tickmarks', true)
                .Set('curvy.tickmarks.fill', null)
                .Set('curvy.tickmarks.stroke', '#aaa')
                .Set('curvy.tickmarks.stroke.linewidth', 2)
                .Set('curvy.tickmarks.size', 5)
                .Set('tickmarks', 'circle')
                .Set('shadow', true)
                .Set('shadow.color', 'rgba(20,20,20,0.3)')
                .Set('shadow.blur',  10)
                .Set('shadow.offsetx', 0)
                .Set('shadow.offsety', 0)
                .Set('background.grid.vlines', false)
                .Set('background.grid.border', true)
                .Set('axis.color', '#666')
                .Set('text.color', '#5e5e5e')
                .Set('linewidth', 3)
                .Set('spline', true)
                .Draw();

        var line4 = new RGraph.Line('business_data_chart', ProductCost)
            .Set('ymax', max_ProductCost)
            .Set('background.grid', false)
            .Set('ylabels', false)
            .Set('noaxes', true)
            .Set('colors', ['grey'])
            .Set('hmargin', 85)
            .Set('gutter.right', gutterRight)
            .Set('gutter.left', gutterLeft)
            .Set('gutter.top', gutterTop)
            .Set('tooltips', year)
            .Set('curvy', true)
            .Set('curvy.tickmarks', true)
            .Set('curvy.tickmarks.fill', null)
            .Set('curvy.tickmarks.stroke', '#aaa')
            .Set('curvy.tickmarks.stroke.linewidth', 2)
            .Set('curvy.tickmarks.size', 5)
            .Set('tickmarks', 'circle')
            .Set('shadow', true)
            .Set('shadow.color', 'rgba(20,20,20,0.3)')
            .Set('shadow.blur',  10)
            .Set('shadow.offsetx', 0)
            .Set('shadow.offsety', 0)
            .Set('background.grid.vlines', false)
            .Set('background.grid.border', true)
            .Set('axis.color', '#666')
            .Set('text.color', '#5e5e5e')
            .Set('linewidth', 3)
            .Set('spline', true)
            .Draw();


        /**
         * This draws the extra axes. It's run whenever the line3 object is drawn
*/
yaxis1 = new RGraph.Drawing.YAxis('business_data_chart', 250)
                .Set('chart.colors', ['red'])
                .Set('chart.text.color', 'red')
                .Set('chart.max', max_annualsales)
                .Set('chart.title', 'Jahresumsatz')
                .Set('linewidth', 3)
                .Draw();

        yaxis2 = new RGraph.Drawing.YAxis('business_data_chart', 185)
                .Set('chart.colors', ['green'])
                .Set('chart.text.color', 'green')
                .Set('chart.max', max_netIncome)
                .Set('chart.title', 'Einkommen')
                .Draw();

        yaxis3 = new RGraph.Drawing.YAxis('business_data_chart', 115)
                .Set('chart.colors', ['blue'])
                .Set('chart.text.color', 'blue')
                .Set('chart.max', max_energyEfficiencyInvestment)
                .Set('chart.title', 'Investment in Energieeffizienz')
                .Draw();
        yaxis3 = new RGraph.Drawing.YAxis('business_data_chart', 55)
            .Set('chart.colors', ['grey'])
            .Set('chart.text.color', 'grey')
            .Set('chart.max', max_ProductCost)
            .Set('chart.title', 'Produktionskosten (€) ')
            .Draw();


        // multiples line chart
        var business_multiline_chart = new RGraph.Line('business_multiline_chart', annualSales, netIncome,energyEfficiencyInvestment,ProductCost)
            .Set('curvy', true)
            .Set('ylabels', true)
            .Set('noaxes', true)
            .Set('curvy.tickmarks', true)
            .Set('curvy.tickmarks.fill', null)
            .Set('curvy.tickmarks.stroke', '#aaa')
            .Set('curvy.tickmarks.stroke.linewidth', 2)
            .Set('curvy.tickmarks.size', 5)
            .Set('linewidth', 3)
            .Set('hmargin', 5)
            .Set('gutter.left',60)
            .Set('tooltips', year)
            .Set('labels', year)
            .Set('shadow', true)
            .Set('shadow.color', 'rgba(20,20,20,0.3)')
            .Set('shadow.blur',  10)
            .Set('shadow.offsetx', 0)
            .Set('shadow.offsety', 0)
            .Set('tickmarks', 'circle')
            .Set('background.grid.vlines', false)
            .Set('background.grid.border', false)
            .Set('axis.color', '#ccc')
            .Set('key', ['Jahresumsatz (€)','Einkommen (€)','Investment in Energieeffizienz (€)','Produktionskosten (€)'])
            business_multiline_chart.Set('key.position.x', business_multiline_chart.canvas.width - 215)
            .Set('key.position.y', 2)
            .Draw();

       // RGraph.Effects.Line.jQuery.Trace(multiline);
     //Gauges_Chart
          var measuring_maximun = parseFloat($('#measuring_maximun').text());
          var measuring_minimun = parseFloat($('#measuring_minimun').text());
          var measuring_avg = parseFloat($('#measuring_avg').text());
          var measuring_current = parseFloat($('#measuring_current').text())

        gauge1 = new RGraph.Gauge('measuring_chart', measuring_minimun, measuring_maximun, measuring_avg)
            .Set('title', 'Durchschnitt')
            .Set('title.bottom', 'kW')
            .Set('centerx', 120)
            .Set('radius', 110)
            .Set('adjustable', false)
            .Set('title.bottom.color', '#ccc')
            .Set('title.top.color', 'white')
            .Set('background.color', 'black')
            .Set('background.gradient', true)
            .Set('centerpin.color', '#666');
            gauge1.Set('needle.colors', [RGraph.RadialGradient(gauge1, 125, 125, 0, 125, 125, 25, 'transparent', '#d66')])
            .Set('text.color', 'white')
            .Set('tickmarks.big.color', 'white')
            .Set('tickmarks.medium.color', 'white')
            .Set('tickmarks.small.color', 'white')
            .Set('border.outer', '#666')
            .Set('border.inner', '#333')
            .Set('colors.ranges', [])
            .Draw();

        gauge2 = new RGraph.Gauge('measuring_chart', measuring_minimun, measuring_maximun, measuring_current)
            .Set('centerx', 360)
            .Set('radius', 110)
            .Set('adjustable', false)
            .Set('title', 'Letzte Messung')
            .Set('title.bottom', 'kW')
            .Set('title.bottom.color', '#ccc')
            .Set('title.top.color', 'white')
            .Set('background.color', 'black')
            .Set('background.gradient', true)
            .Set('centerpin.color', '#666');
            gauge2.Set('needle.colors', [RGraph.RadialGradient(gauge2, 125, 125, 0, 125, 125, 25, 'transparent', '#d66')])
            .Set('text.color', 'white')
            .Set('tickmarks.big.color', 'white')
            .Set('tickmarks.medium.color', 'white')
            .Set('tickmarks.small.color', 'white')
            .Set('border.outer', '#666')
            .Set('border.inner', '#333')
            .Set('colors.ranges', [])
            .Draw();





    }


