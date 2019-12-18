<script>
  import Slider from '@smui/slider'
  
  let action = 12


  let action_x = "79"
  let action_y = "79"
  let ideas_x = "79"
  let ideas_y = "229"
  let process_x = "229"
  let process_y = "79"
  let people_x = "229"
  let people_y = "229"
</script>

<style>
	h1, figure, p {
		text-align: center;
		margin: 0 auto;
	}

	h1 {
		font-size: 2.8em;
		text-transform: uppercase;
		font-weight: 700;
		margin: 0 0 0.5em 0;
	}

	figure {
		margin: 0 0 1em 0;
	}

	img {
		width: 100%;
		max-width: 400px;
		margin: 0 0 1em 0;
	}

	p {
		margin: 1em auto;
	}

	@media (min-width: 480px) {
		h1 {
			font-size: 4em;
		}
	}
</style>

<svelte:head>
	<title>Sapper project template</title>
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,600,700">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Mono">
</svelte:head>


<Slider bind:action />
 

<svg xmlns="http://www.w3.org/2000/svg" 
    xmlns:xlink="http://www.w3.org/1999/xlink" style="isolation:isolate" viewBox="0 0 300 300" width="300pt" height="300pt">
    <defs>
        <clipPath id="_clipPath_rqatKbygh5QZF4AQWI1kvTrCXwUilDez">
            <rect width="300" height="300"/>
        </clipPath>
    </defs>
    <g clip-path="url(#_clipPath_rqatKbygh5QZF4AQWI1kvTrCXwUilDez)">
        <g opacity="0.88">
            <rect x="0" y="0" width="300" height="300" transform="matrix(1,0,0,1,0,0)" fill="rgb(255,255,255)"/>
        </g>
        <line x1="150" y1="0" x2="150" y2="300" vector-effect="non-scaling-stroke" stroke-width="1" stroke="rgb(0,0,0)" stroke-linejoin="miter" stroke-linecap="square" stroke-miterlimit="3"/>
        <line x1="0" y1="150" x2="300" y2="150" vector-effect="non-scaling-stroke" stroke-width="1" stroke="rgb(0,0,0)" stroke-linejoin="miter" stroke-linecap="square" stroke-miterlimit="3"/>
        <g style="mix-blend-mode:normal;" opacity="0.32">
            <text transform="matrix(1,0,0,1,44.5,70.777)" style="font-family:'Open Sans';font-weight:400;font-size:20px;font-style:normal;fill:#000000;stroke:none;">Action</text>
        </g>
        <g style="mix-blend-mode:normal;" opacity="0.32">
            <text transform="matrix(1,0,0,1,187.5,70.777)" style="font-family:'Open Sans';font-weight:400;font-size:20px;font-style:normal;fill:#000000;stroke:none;">Process</text>
        </g>
        <g style="mix-blend-mode:normal;" opacity="0.32">
            <text transform="matrix(1,0,0,1,49,251.777)" style="font-family:'Open Sans';font-weight:400;font-size:20px;font-style:normal;fill:#000000;stroke:none;">Ideas</text>
        </g>
        <g style="mix-blend-mode:normal;" opacity="0.32">
            <text transform="matrix(1,0,0,1,192,251.777)" style="font-family:'Open Sans';font-weight:400;font-size:20px;font-style:normal;fill:#000000;stroke:none;">People</text>
        </g>
        <circle vector-effect="non-scaling-stroke" cx="{action_x}" cy="{action_y}" r="4" fill="rgb(255,0,0)"/>
        <circle vector-effect="non-scaling-stroke" cx="{ideas_x}" cy="{ideas_y}" r="4" fill="rgb(255,0,0)"/>
        <circle vector-effect="non-scaling-stroke" cx="{process_x}" cy="{process_y}" r="4" fill="rgb(255,0,0)"/>
        <circle vector-effect="non-scaling-stroke" cx="{people_x}" cy="{people_y}" r="4" fill="rgb(255,0,0)"/>
        <line x1="{ideas_x}" y1="{ideas_y}" x2="{people_x}" y2="{people_y}" vector-effect="non-scaling-stroke" stroke-width="1" stroke="rgb(255,0,0)" stroke-linejoin="miter" stroke-linecap="square" stroke-miterlimit="3"/>
        <line x1="{action_x}" y1="{action_y}" x2="{process_x}" y2="{process_y}" vector-effect="non-scaling-stroke" stroke-width="1" stroke="rgb(255,0,0)" stroke-linejoin="miter" stroke-linecap="square" stroke-miterlimit="3"/>
        <line x1="{ideas_x}" y1="{ideas_y}" x2="{action_x}" y2="{action_y}" vector-effect="non-scaling-stroke" stroke-width="1" stroke="rgb(255,0,0)" stroke-linejoin="miter" stroke-linecap="square" stroke-miterlimit="3"/>
        <line x1="{people_x}" y1="{people_y}" x2="{process_x}" y2="{process_y}" vector-effect="non-scaling-stroke" stroke-width="1" stroke="rgb(255,0,0)" stroke-linejoin="miter" stroke-linecap="square" stroke-miterlimit="3"/>
    </g>
</svg>