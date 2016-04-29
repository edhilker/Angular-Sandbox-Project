<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DragNDrop.aspx.cs" Inherits="DragNDrop" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset=utf-8>
	<title>The HTML5 drag and drop API element</title>
	<!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

	<style>
		body { margin:100px; }
		article, aside, figure, footer, header, hgroup, menu, nav, section { display:block; }
		menu { background-color:#ddd; }
		#boxA, #boxB { 
			float:left;
			width:400px; 
			height:200px; 
			padding:10px; 
			margin-right:30px;
			border:1px solid #000;
			background-color:#aaa;
		}
		.word {
			width:60px; height:20px; padding:1px; margin:5px; text-align:center; font-weight:bold;
			background-color:#fff;
			display:inline-block;
		}
		*[draggable=true] {
			-moz-user-select:none;
			-khtml-user-drag: element;
			cursor: move;
		}
	</style>

	<script>
	    // dragDefine - called when an item starts to be dragged
	    function dragDefine(ev) {
	        ev.dataTransfer.effectAllowed = 'move';
	        ev.dataTransfer.setData("text/plain", ev.target.getAttribute('id'));
	        ev.dataTransfer.setDragImage(ev.target, 0, 0);
	        return true;
	    }

	    // dragOver - called when the item being dragged is over another item
	    function dragOver(ev) {
	        // Get the id of the item being dragged
	        //var idDrag = ev.dataTransfer.getData("Text");
	        // Get the id of the item the dragged object is currently over
	        //var idBox = ev.target.getAttribute('id');	
	        // You may want to perform some checks here, e.g. is the dragged item allowed to be dropped here for example

	        // Turn off the default behaviour i.e. allow the drop
	        ev.preventDefault();
	    }

	    // dragEnd - called when the drag is complete
	    function dragEnd(ev) {
	        return true;
	    }

	    // dragDrop - called when the item being dragged is dropped
	    function dragDrop(ev) {
	        // Get the id of the item being dragged
	        var idDrag = ev.dataTransfer.getData("Text");
	        // Append the dragged item to the item it is currently over
	        ev.target.appendChild(document.getElementById(idDrag));
	        // Turn off the default behaviour
	        ev.preventDefault();
	    }		
	</script>
</head>

<body>
    <form id="form1" runat="server">
    <div>
    
<article>
		<header>
			<h1>The drag and drop API</h1>
		</header>
		
		<section>
			<header>
				<h3>Drag the words from the left box into the right box (and vice versa) below</h3>
			</header>
			<div id="boxA" ondragover="dragOver(event)" ondrop="dragDrop(event)">
				<div id="word1" class="word" draggable="true" ondragstart="return dragDefine(event)" ondragend="dragEnd(event)">HTML5</div>
				<div id="word2" class="word" draggable="true" ondragstart="return dragDefine(event)" ondragend="dragEnd(event)">is</div>
				<div id="word3" class="word" draggable="true" ondragstart="return dragDefine(event)" ondragend="dragEnd(event)">very</div>
				<div id="word4" class="word" draggable="true" ondragstart="return dragDefine(event)" ondragend="dragEnd(event)">useful</div>
				<div id="word5" class="word" draggable="true" ondragstart="return dragDefine(event)" ondragend="dragEnd(event)">indeed</div>
			</div>			
			<div id="boxB" ondragover="return dragOver(event)" ondrop="dragDrop(event)"></div>	
		</section>
		
	</article>




    </div>
    </form>
</body>
</html>
