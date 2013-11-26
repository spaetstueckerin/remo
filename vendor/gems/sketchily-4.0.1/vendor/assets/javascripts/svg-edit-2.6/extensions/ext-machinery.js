/*
 * ext-machinery.js
 *
 */

svgEditor.addExtension("Machinery", function() {
	var current_d, cur_shape_id;
	var canv = svgEditor.canvas;
	var cur_shape;
	var start_x, start_y;
	var svgroot = canv.getRootElem();
	var lastBBox = {};
    var xmlns = "http://www.w3.org/2000/svg";

    var shape_fill = '#BFBF00';
    var shape_stroke = '#333333';
    var shape_stroke_width = 2;

	// This populates the category list
	var categories = {
		machinery: 'Maschinenpark',
		misc: 'Diverses'
	};
	
	var library = {
		'machinery': {
			data: {
                "Banderoliermaschine": {
                    path: "m1.00047,30.80047l0,0c0,16.45808 33.35479,29.8 74.50001,29.8c41.1452,0 74.49998,-13.34192 74.49998,-29.8l0,0c0,-16.45809 33.3548,-29.8 74.50002,-29.8c41.14522,0 74.49998,13.34192 74.49998,29.8l0,238.4c0,-16.45808 -33.35477,-29.80002 -74.49998,-29.80002c-41.14522,0 -74.50002,13.34193 -74.50002,29.80002c0,16.45807 -33.35478,29.79999 -74.49998,29.79999c-41.14522,0 -74.50001,-13.34192 -74.50001,-29.79999z",
                    consumption: 80
                },
                "Bindemaschine": {
                    path: "m150,299l0,0c-82.29043,0 -149,-66.70955 -149,-149l0,0c0,-82.29043 66.70957,-149 149,-149l0,0c39.51726,0 77.41599,15.69817 105.3589,43.64108c27.94292,27.94293 43.6411,65.84165 43.6411,105.35892l0,0c0,39.51726 -15.69818,77.41599 -43.6411,105.3589l43.6411,0l0,43.6411z",
                    consumption: 90
                },
                "Bogen-Anleger": {
                    path: "m299.0007,83.77844c0,18.28676 -66.70958,33.11111 -149.00002,33.11111m149.00002,-33.11111l0,0c0,18.28676 -66.70958,33.11111 -149.00002,33.11111c-82.29041,0 -148.99997,-14.82432 -148.99997,-33.11111m0,0l0,0c0,-18.28674 66.70956,-33.1111 148.99997,-33.1111c82.29044,0 149.00002,14.82436 149.00002,33.1111l0,132.44449c0,18.28674 -66.70958,33.11105 -149.00002,33.11105c-82.29041,0 -148.99997,-14.82431 -148.99997,-33.11105z",
                    consumption: 60
                },
                "Bogenoffsetdruckmaschine": {
                    path: "m48.94167,99.12235l202.11729,0l0,0c26.47794,0 47.9425,22.7794 47.9425,50.8792c0,28.09979 -21.46457,50.87918 -47.9425,50.87918l-202.11729,0l0,0c-26.47791,0 -47.9425,-22.77939 -47.9425,-50.87918c0,-28.09981 21.46459,-50.8792 47.9425,-50.8792z",
                    consumption: 130
                },
                "Bohrmaschine": {
                    path: "m1,60.5l59.5,-59.5l238.5,0l0,298l-298,0l0,-238.5z",
                    consumption: 90
                },
                "Buendelmaschine": {
                    path: "m1.00064,1.00098l298,0l0,242.19891c-149,0 -149,92.28223 -298,39.84915z",
                    consumption: 85
                },
                "Drahtkammbindung": {
                    path: "m50.83397,0.99813l249.16667,0c-27.52219,0 -49.83333,66.78392 -49.83333,149.16604c0,82.38213 22.31114,149.16603 49.83333,149.16603l-249.16667,0l0,0c-27.52219,0 -49.83333,-66.78391 -49.83333,-149.16603c0,-82.38212 22.31114,-149.16604 49.83333,-149.16604z",
                    consumption: 70
                },
                "Einschiessmaschine": {
                    path: "m1,37.20809c99.33355,-125.42461 198.66708,125.4246 298.00061,0l0,225.76426c-99.33353,125.42462 -198.66706,-125.42459 -298.00061,0z",
                    consumption: 100
                },
                "Falzmaschine": {
                    path: "m1,1l149,0l0,0c82.29044,0 149,66.70957 149,149c0,82.29044 -66.70956,149 -149,149l-149,0z",
                    consumption: 140
                },
                "Hefter": {
                    path: "m240.73857,30.03061c-19.6691,-14.08556 -47.05211,-9.56463 -61.15193,10.11613l-110.5827,154.39919c-10.06849,14.04756 -6.83991,33.60693 7.22162,43.67073c14.06201,10.05386 33.60682,6.82529 43.6753,-7.23622l78.07961,-109.00671l-10.17877,-7.30106l-78.06989,109.01884l0,0c-6.04684,8.416 -17.77746,10.36938 -26.19347,4.34637c-8.4254,-6.02307 -10.35488,-17.76814 -4.31784,-26.20811l0,0l110.57335,-154.38195l0.00938,-0.01214l-0.02393,-0.01446c10.05447,-14.00874 29.66161,-17.2522 43.68483,-7.20991c14.02371,10.05431 17.26672,29.66139 7.22673,43.68502l0,-0.01215l-121.20551,169.23462l0.01455,0.00935c-14.07608,19.6454 -41.52103,24.17805 -61.16635,10.11665c-19.64528,-14.08549 -24.16409,-41.50662 -10.10207,-61.16171l88.08609,-122.98212l-10.18346,-7.28661l-88.08137,122.98019c-18.12144,25.29083 -12.29888,60.47858 13.00637,78.59537c25.30525,18.1311 60.48768,12.29419 78.60968,-12.98734l121.20084,-169.23177c14.06166,-19.67144 9.55254,-47.04266 -10.13107,-61.14018z",
                    consumption: 80
                },
                "Nutmaschine": {
                    path: "m1,149.99924l49.66672,-97.42307l198.66612,0c27.43034,0 49.66716,43.61774 49.66716,97.42307c0,53.80476 -22.23682,97.42308 -49.66716,97.42308l-198.66612,0l-49.66672,-97.42308z",
                    consumption: 80
                },
                "PC-Einheit": {
                    path: "m37.375,261.625l0,-242.9375l0,0c0,-10.32083 8.36669,-18.6875 18.6875,-18.6875l224.25,0c10.32083,0 18.6875,8.36667 18.6875,18.6875c0,10.32081 -8.36667,18.6875 -18.6875,18.6875l-18.6875,0l0,242.9375c0,10.32083 -8.36668,18.6875 -18.6875,18.6875l-224.25,0l0,0c-10.32083,0 -18.6875,-8.36667 -18.6875,-18.6875c0,-10.32083 8.36667,-18.6875 18.6875,-18.6875zm37.375,-261.625l0,0c10.32081,0 18.6875,8.36667 18.6875,18.6875c0,10.32081 -8.36669,18.6875 -18.6875,18.6875c-5.1604,0 -9.34375,-4.18335 -9.34375,-9.34375c0,-5.16041 4.18335,-9.34375 9.34375,-9.34375l18.6875,0m186.875,18.6875l-205.5625,0m-37.375,224.25l0,0c5.1604,0 9.34375,4.18335 9.34375,9.34375c0,5.1604 -4.18335,9.34375 -9.34375,9.34375l18.6875,0m-18.6875,18.6875l0,0c10.32081,0 18.6875,-8.36667 18.6875,-18.6875l0,-18.6875",
                    consumption: 100
                },
                "Perforationsmaschine": {
                    path: "m1.00064,1.00098l298,0l0,242.19891c-149,0 -149,92.28223 -298,39.84915z",
                    consumption: 110
                },
                "Rillmaschine": {
                    path: "m50.83397,0.99813l249.16667,0c-27.52219,0 -49.83333,66.78392 -49.83333,149.16604c0,82.38213 22.31114,149.16603 49.83333,149.16603l-249.16667,0l0,0c-27.52219,0 -49.83333,-66.78391 -49.83333,-149.16603c0,-82.38212 22.31114,-149.16604 49.83333,-149.16604z",
                    consumption: 115
                },
                "Rollenoffsetdruckmaschine": {
                    path: "m1,37.20809c99.33355,-125.42461 198.66708,125.4246 298.00061,0l0,225.76426c-99.33353,125.42462 -198.66706,-125.42459 -298.00061,0z",
                    consumption: 150
                },
                "Scanner": {
                    path: "m1,1l149,0l0,0c82.29044,0 149,66.70957 149,149c0,82.29044 -66.70956,149 -149,149l-149,0z",
                    consumption:  50
                },
                "Schlitzmaschine": {
                    path: "m1.00063,150.00006l59.58485,-82.24058l178.75446,0l59.58505,82.24058l-59.58505,82.24086l-178.75446,0l-59.58485,-82.24086z",
                    consumption: 90
                },
                "Schneidemaschine": {
                    path: "m1,149.99924l49.66672,-97.42307l198.66612,0c27.43034,0 49.66716,43.61774 49.66716,97.42307c0,53.80476 -22.23682,97.42308 -49.66716,97.42308l-198.66612,0l-49.66672,-97.42308z",
                    consumption: 80
                },
                "Stanzmaschine": {
                    path: "m276.79822,92.15207l-28.08221,0c-2.75061,-18.4 -16.50803,-37.86781 -32.37662,-54.42469c-16.99626,-17.02082 -35.20718,-30.64767 -50.17932,-32.51124c-0.88823,-0.12518 -1.70302,-0.20812 -2.67018,-0.20812l-98.50476,0c-1.53579,0 -3.07002,0.64884 -4.20581,1.80098c-1.13451,1.15072 -1.7819,2.74087 -1.7819,4.3949l0,80.94817l-27.51644,0c-14.65394,0 -26.46898,12.28702 -26.46898,27.4211l0,121.77035l53.98542,0l0,28.50945c0,1.61307 0.64739,3.1611 1.7819,4.37573c1.13579,1.15088 2.59125,1.77933 4.20581,1.77933l178.31042,0c1.53412,0 3.06998,-0.62845 4.20424,-1.77933s1.86356,-2.74213 1.86356,-4.37573l0,-28.50945l53.98422,0l0,-121.77035c0,-15.13409 -11.89548,-27.4211 -26.54932,-27.4211l0,0l0,0l0,0l-0.00003,0zm-39.49878,171.4845l-166.32652,0l0,-42.87218l166.32652,0l0,42.87218zm0,-146.84512c0,-0.42039 0,-0.87866 0,-1.3194c-0.23947,-0.94263 -0.88686,-1.8636 -1.69485,-2.74231l-164.63165,0l0,-95.34889l92.59591,0l0,0.02035c4.04538,-0.27342 7.53017,3.85218 10.2018,13.31272c2.42128,8.97902 3.06874,20.70285 3.06874,28.84525c0,5.92533 -0.23947,9.94481 -0.23947,9.94481l-0.48839,6.55225l6.31575,0.06127c0.08014,0 14.73404,0.18909 29.13907,3.57878c13.8378,3.09993 24.68561,9.25243 25.73311,16.2454c0,0.60796 0,1.23376 0,1.8213l0,19.02846l0,0l0,0l0,0l-0.00002,0.00002z",
                    consumption: 120
                }
			},
            fill: true,
			buttons: []
		}
	};
	
	var cur_lib = library.machinery;
	var mode_id = 'machinerylib';
    var svg_id_prefix = 'mach_';
    var svg_gid_prefix = 'g' + svg_id_prefix;
	
	function loadIcons() {
		$('#machinery_buttons').empty();
		// Show lib ones
		$('#machinery_buttons').append(cur_lib.buttons);
	}
	
	function loadLibrary(cat_id) {
		var lib = library[cat_id];
		if(!lib) {
			$('#machinery_buttons').html('Loading...');
			$.getJSON('extensions/machinerylib/' + cat_id + '.json', function(result, textStatus) {
				cur_lib = library[cat_id] = {
					data: result.data,
					size: result.size,
					fill: result.fill
				}
				makeButtons(cat_id, result);
				loadIcons();
			});
			return;
		}
		cur_lib = lib;
		if(!lib.buttons.length)	makeButtons(cat_id, lib);
		loadIcons();
	}
	
	function makeButtons(cat, shapes) {
		var size = cur_lib.size || 300;
		var fill = cur_lib.fill || false;
		var off = size * .05;
		var vb = [-off, -off, size + off*2, size + off*2].join(' ');
		var stroke = fill ? shape_stroke_width : (size/30);
        var shape_text = (cur_lib == library.machinery) ? '<text xml:space="preserve" text-anchor="middle" font-family="serif" font-size="100" y="200" x="140" stroke-linecap="null" stroke-linejoin="null" stroke-dasharray="null" stroke-width="0" stroke="#000000" fill="#000000">ABC</text>' : "";
		
		var shape_icon = new DOMParser().parseFromString(
			'<svg xmlns="' + xmlns + '">' +
                '<svg viewBox="' + vb + '">' +
                    '<path fill="' + (fill ? shape_fill : 'none') + '" stroke="' + shape_stroke + '" stroke-width="' + stroke + '" />' +
                    shape_text +
                '<\/svg>' +
            '<\/svg>',
			'text/xml');

		var width = 24;
		var height = 24;
		shape_icon.documentElement.setAttribute('width', width);
		shape_icon.documentElement.setAttribute('height', height);
		var svg_elem = $(document.importNode(shape_icon.documentElement,true));
	
		var data = shapes.data;
		
		cur_lib.buttons = [];
	
		for(var id in data) {
			var path_d = data[id].path;
			var icon = svg_elem.clone();
			icon.find('path').attr('d', path_d);
			
			var icon_btn = icon.wrap('<div class="tool_button">').parent().attr({
				id: mode_id + '_' + id,
				title: id
			});

			// Store for later use
			cur_lib.buttons.push(icon_btn[0]);
		}
	}

	return {
		svgicons: "/assets/svg-edit-2.6/extensions/ext-machinery.xml",
		buttons: [{
			id: "tool_machinerylib",
			type: "mode_flyout", // _flyout
			title: "Maschinen",
			events: {
				"click": function() {
					canv.setMode(mode_id);
				}
			}
		}],
		callback: function() {
			$('<style>').text('\
			#machinery_buttons {\
				overflow: auto;\
				width: 180px;\
				max-height: 300px;\
				display: table-cell;\
				vertical-align: middle;\
			}\
			\
			#machinery_cats {\
				min-width: 110px;\
				display: table-cell;\
				vertical-align: middle;\
				height: 300px;\
			}\
			#machinery_cats > div {\
				line-height: 1em;\
				padding: .5em;\
				border:1px solid #B0B0B0;\
				background: #E8E8E8;\
				margin-bottom: -1px;\
			}\
			#machinery_cats div:hover {\
				background: #FFFFCC;\
			}\
			#machinery_cats div.current {\
				font-weight: bold;\
			}').appendTo('head');

			var btn_div = $('<div id="machinery_buttons">');
			$('#tools_machinerylib > *').wrapAll(btn_div);
			
			var shower = $('#tools_machinerylib_show');

			loadLibrary('machinery');
			
			// Do mouseup on parent element rather than each button
			$('#machinery_buttons').mouseup(function(evt) {
				var btn = $(evt.target).closest('div.tool_button');
				
				if(!btn.length) return;
				
				var copy = btn.children().clone();
				shower.children(':not(.flyout_arrow_horiz)').remove();
				shower
					.append(copy)
					.attr('data-curopt', '#' + btn[0].id) // This sets the current mode
					.mouseup();
				canv.setMode(mode_id);
				
				cur_shape_id = btn[0].id.substr((mode_id + '_').length);
				current_d = cur_lib.data[cur_shape_id].path;
				
				$('.tools_flyout').fadeOut();
			});

			var machinery_cats = $('<div id="machinery_cats">');
			
			var cat_str = '';
			
			$.each(categories, function(id, label) {
				cat_str += '<div data-cat=' + id + '>' + label + '</div>';
			});

            machinery_cats.html(cat_str).children().bind('mouseup', function() {
				var catlink = $(this);
				catlink.siblings().removeClass('current');
				catlink.addClass('current');
				
				loadLibrary(catlink.attr('data-cat'));
				// Get stuff
				
				return false;
			});

            machinery_cats.children().eq(0).addClass('current');
			
			$('#tools_machinerylib').append(machinery_cats);

			shower.mouseup(function() {
				canv.setMode(current_d ? mode_id : 'select');
			});

			
			$('#tool_machinerylib').remove();
			
			var h = $('#tools_machinerylib').height();
			$('#tools_machinerylib').css({
				'margin-top': -(h/2 - 15),
				'margin-left': 3
			});
		},

		mouseDown: function(opts) {
			var mode = canv.getMode();

			if(mode !== mode_id) return;
			
			var e = opts.event;
			var x = start_x = opts.start_x;
			var y = start_y = opts.start_y;
			var cur_style = canv.getStyle();
            var cur_svg_id = (cur_lib == library.machinery) ? svg_id_prefix + cur_lib.data[cur_shape_id].consumption + "_" + canv.getNextId() : canv.getNextId();

			cur_shape = canv.addSvgElementFromJson({
				"element": "path",
				"curStyles": true,
				"attr": {
					"d": current_d,
					"id": cur_svg_id,
					"opacity": cur_style.opacity / 2,
					"style": "pointer-events:none",
                    // This will be striped out by svg-edit. Therefore put it also on the id
                    "consumption": cur_lib.data[cur_shape_id].consumption
				}
			});

            // Make sure shape uses absolute values
            if(/[a-z]/.test(current_d)) {
                current_d = cur_lib.data[cur_shape_id].path = canv.pathActions.convertPath(cur_shape);
                cur_shape.setAttribute('d', current_d);
                canv.pathActions.fixEnd(cur_shape);
            }

			cur_shape.setAttribute('transform', "translate(" + x + "," + y + ") scale(0.005) translate(" + -x + "," + -y + ")");
			canv.recalculateDimensions(cur_shape);
			var tlist = canv.getTransformList(cur_shape);
			lastBBox = cur_shape.getBBox();
			
			return {
				started: true
			}
		},

		mouseMove: function(opts) {
            var mode = canv.getMode();
			if(mode !== mode_id) return;
			
			var zoom = canv.getZoom();
			var evt = opts.event;
			
			var x = opts.mouse_x/zoom;
			var y = opts.mouse_y/zoom;
			
			var tlist = canv.getTransformList(cur_shape),
				box = cur_shape.getBBox(), 
				left = box.x, top = box.y, width = box.width,
				height = box.height;
			var dx = (x-start_x), dy = (y-start_y);

			var newbox = {
				'x': Math.min(start_x,x),
				'y': Math.min(start_y,y),
				'width': Math.abs(x-start_x),
				'height': Math.abs(y-start_y)
			};

			var ts = null,
				tx = 0, ty = 0,
				sy = height ? (height+dy)/height : 1, 
				sx = width ? (width+dx)/width : 1;

			var sx = newbox.width / lastBBox.width;
			var sy = newbox.height / lastBBox.height;
			
			sx = sx || 1;
			sy = sy || 1;
			
			// Not perfect, but mostly works...
			if(x < start_x) {
				tx = lastBBox.width;
			}
			if(y < start_y) ty = lastBBox.height;
			
			// update the transform list with translate,scale,translate
			var translateOrigin = svgroot.createSVGTransform(),
				scale = svgroot.createSVGTransform(),
				translateBack = svgroot.createSVGTransform();
				
			translateOrigin.setTranslate(-(left+tx), -(top+ty));
			if(!evt.shiftKey) {
				var max = Math.min(Math.abs(sx), Math.abs(sy));

				sx = max * (sx < 0 ? -1 : 1);
				sy = max * (sy < 0 ? -1 : 1);
			}
			scale.setScale(sx,sy);
			
			translateBack.setTranslate(left+tx, top+ty);
			var N = tlist.numberOfItems;
			tlist.appendItem(translateBack);
			tlist.appendItem(scale);
			tlist.appendItem(translateOrigin);

			canv.recalculateDimensions(cur_shape);
			
			lastBBox = cur_shape.getBBox();
		},

		mouseUp: function(opts) {
			var mode = canv.getMode();
			if(mode !== mode_id) return;
			
			if(opts.mouse_x == start_x && opts.mouse_y == start_y) {
				return {
					keep: false,
					element: cur_shape,
					started: false
				}
			}

            // Create text label for the machine
            if (cur_lib == library.machinery) {
                var box = cur_shape.getBBox();
                var shape_text = canv.addSvgElementFromJson({
                    "element": "text",
                    "curStyles": true,
                    "attr": {
                        "x": box.x + box.width/2,
                        "y": box.y + box.height/2,
                        "id": 'txt_' + cur_shape.getAttribute("id"),
                        "fill": '#000000',
                        "stroke-width": 0,
                        "font-size": 18,
                        "font-family": "serif",
                        "text-anchor": "middle",
                        "xml:space": "preserve",
                        "opacity": cur_shape.opacity,
                        "textLength": box.width-10,
                        "lengthAdjust": "spacingAndGlyphs"
                    }
                });
                shape_text.textContent = cur_shape_id;

                // Group shape and text
                canv.clearSelection();
                canv.addToSelection([cur_shape, shape_text], false);
                canv.groupSelectedElements();
                canv.getSelectedElems()[0].setAttribute("id", svg_gid_prefix + cur_shape_id + '_' + cur_shape.getAttribute("id"));
                canv.clearSelection();
            }

            return {
				keep: true,
				element: cur_shape,
				started: false
			}
		}		
	}
});
