$(function() {
		var availableTags = [
			"Ciencia ficcion y fantasia",
            "Marketing",
            "Educación",
            "Constitucional",
            "Narrativa",
            "Medicina"
  ];
		$( "#libro_categoria" ).autocomplete({
			source: availableTags
		});
	});
