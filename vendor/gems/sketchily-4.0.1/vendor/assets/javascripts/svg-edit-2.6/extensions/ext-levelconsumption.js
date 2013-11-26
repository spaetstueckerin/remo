/*
 * ext-levelconsumption.js
 *
 */

var svg_id_prefix = 'mach_';
var svg_gid_prefix = 'g' + svg_id_prefix;

var isMachine = function(svgElem) {
    return svgElem && (svgElem.getAttribute("id").substr(0, svg_gid_prefix.length) == svg_gid_prefix);
}

var getConsume = function(svgElem) {
    return parseInt(/_\d+_/.exec(svgElem.id)[0].substr(1));
}

var getMachineName = function(svgElem) {
    var _name_ = /_[-a-zA-ZäAëËöÖüÜß]+_/.exec(svgElem.id)[0];
    return _name_.substr(1, _name_.length-2);
}

svgEditor.addExtension("Level Consumption", function() {
    return {
        name: "Level Consumption",
        svgicons: "/assets/svg-edit-2.6/extensions/levelconsumption-icon.xml",
        buttons: [{
            id: "level_consumption",
            type: "context",
            title: "Berechne den gesamten Energieverbrauch in der Etage",
            panel: "history_panel",
            events: {
                'click': function() {
                    var total_consumption = 0;
                    svgedit.utilities.walkTree(svgEditor.canvas.getRootElem(), function(elem) {
                        if (elem.id.substr(0, svg_gid_prefix.length) == svg_gid_prefix)
                            // svg-edit strips out unknown attributes, so get the consumption from the element id
                            // total_consumption += parseInt(elem.getAttribute("consumption"));
                            total_consumption += getConsume(elem);
                    })
                    var doc_level_consumption = window.parent.document.getElementById("total_consumption_id");
                    doc_level_consumption.value = total_consumption;
                }
            }
        }],

        selectedChanged: function(opts) {
            if (!opts.multiselected) {
                if (isMachine(opts.selectedElement)) {
                    window.parent.document.getElementById("machine_name").innerText = getMachineName(opts.selectedElement);
                    window.parent.document.getElementById("machine_consumption").innerText = getConsume(opts.selectedElement);
                }
                //window.parent.document.getElementById("machine_name").value = parseInt(opts.selectedElement.getAttribute("id").substr(11));
            }
        }
    }
});

