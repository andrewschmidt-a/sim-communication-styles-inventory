<script>
  import Card, {Content, PrimaryAction, Media, MediaContent, Actions, ActionButtons, ActionIcons} from '@smui/card';
  import Button, {Label} from '@smui/button';
  import IconButton, {Icon} from '@smui/icon-button';

  import Radio from '@smui/radio';
  import FormField from '@smui/form-field';
  import Slider from '@smui/slider'
  let calculate_side = (c) =>  Math.sqrt(Math.pow(c, 2)/2)


  function doAction(action) {
    alert('You did an action: '+action);
  }
  let page = 0;
  let questions = [
    {"A":"I like action","B":"I deal with problems in a systematic way"},
    {"A":"I enjoy change very much","B":"I believe that teams are more effective than individuals"},
    {"A":"I enjoy working with people","B":"I am more interested in the future than the past"},
    {"A":"Deadlines are important for me","B":"I like to attend well organized group meetings"},
    {"A":"I cannot stand procrastination","B":"I believe that new ideas have to be tested before being used"},
    {"A":"I am always looking for new possibilities","B":"I enjoy the stimulation of interaction with others"},
    {"A":"I want to set up my own objectives","B":"When I start something I like to go through until the end"},
    {"A":"I do challenge people around me","B":"I basically try to understand other people's emotions"},
    {"A":"I look forward to receiving feedback on my performance","B":"I find the step-by-step approach very effective"},
    {"A":"I think I am good at reading people","B":"I like creative problem solving"},
    {"A":"I think about the future all the time","B":"I am sensitive to others' needs"},
    {"A":"Planning is the key to success","B":"I become impatient with long deliberations"},
    {"A":"I am cool under pressure","B":"I value experience very much"},
    {"A":"I listen to people","B":"People say that I am a fast thinker"},
    {"A":"Cooperation is a key word for me","B":"I use logical methods to test alternatives"},
    {"A":"I always question myself","B":"I like to handle several projects at the same time"},
    {"A":"I learn by doing","B":"I believe that my head rules my heart"},
    {"A":"I do not like details","B":"I can predict how others may react to a certain action"},
    {"A":"Thought and analysis should always precede action","B":"I am able to assess the climate of a group"},
    {"A":"I perceive myself as decisive","B":"I have a tendency to start things and not finish them"},
    {"A":"I search for challenging tasks","B":"I rely on observation and data"},
    {"A":"I can express my feelings openly","B":"I like to design new projects"},
    {"A":"I enjoy reading very much","B":"I perceive myself as a helper"},
    {"A":"I like to focus on one issue at a time","B":"I like to achieve"},
    {"A":"I enjoy learning about others","B":"I like variety"},
    {"A":"Facts speak for themselves","B":"I use my imagination as much as possible"},
    {"A":"I am impatient with long, slow assignments","B":"My mind never stops working"},
    {"A":"Key decisions have to be made in a cautious way","B":"I strongly believe that people need each other to get work done"},
    {"A":"I usually make decisions without thinking too much","B":"Emotions create problems"},
    {"A":"I like to be liked by others","B":"I can put two and two together very quickly"},
    {"A":"I try out my new ideas on people","B":"I believe in the scientific approach"},
    {"A":"I like to get things done","B":"Good relationships are essential"},
    {"A":"I am impulsive","B":"I accept differences in people"},
    {"A":"I like to be intellectually stimulated","B":"Communicating with people is an end in itself"},
    {"A":"I like to organize","B":"I usually jump from one task to another"},
    {"A":"Self-fulfilment is a key word for me","B":"Talking and working with people is a creative act"},
    {"A":"I enjoy playing with ideas","B":"I dislike to waste my time"},
    {"A":"I enjoy doing what I am good at","B":"I learn by interacting with others"},
    {"A":"I am patient with details","B":"I find abstractions interesting and enjoyable"},
    {"A":"I like brief, to-the-point statements","B":"I feel confident in myself"}
  ]
let answers = [
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null
]

let answer_key = [
    {"A":"Action","B":"Process"},
    {"A":"Ideas","B":"People"},
    {"A":"People","B":"Ideas"},
    {"A":"Action","B":"Process"},
    {"A":"Action","B":"Process"},
    {"A":"Ideas","B":"People"},
    {"A":"Action","B":"Process"},
    {"A":"Ideas","B":"People"},
    {"A":"Action","B":"Process"},
    {"A":"People","B":"Ideas"},
    {"A":"Ideas","B":"People"},
    {"A":"Process","B":"Action"},
    {"A":"Process","B":"Action"},
    {"A":"People","B":"Ideas"},
    {"A":"People","B":"Process"},
    {"A":"Ideas","B":"Action"},
    {"A":"Action","B":"Process"},
    {"A":"Ideas","B":"People"},
    {"A":"Process","B":"People"},
    {"A":"Action","B":"Ideas"},
    {"A":"Action","B":"Process"},
    {"A":"People","B":"Ideas"},
    {"A":"Ideas","B":"People"},
    {"A":"Process","B":"Action"},
    {"A":"Ideas","B":"Action"},
    {"A":"Process","B":"Ideas"},
    {"A":"Action","B":"Ideas"},
    {"A":"Process","B":"People"},
    {"A":"Action","B":"Process"},
    {"A":"People","B":"Ideas"},
    {"A":"Ideas","B":"Process"},
    {"A":"Action","B":"People"},
    {"A":"Action","B":"Process"},
    {"A":"Ideas","B":"People"},
    {"A":"Process","B":"Action"},
    {"A":"Ideas","B":"People"},
    {"A":"Process","B":"Action"},
    {"A":"Ideas","B":"People"},
    {"A":"Process","B":"Ideas"},
    {"A":"Action","B":"People"}
]
  
  let selected = "a"
  
  $: action = answers.filter(e => e == "Action").length;
  $: action_r = action*(212.132/2)/12
  $: action_x = Math.round(150-calculate_side(action_r))
  $: action_y = Math.round(150-calculate_side(action_r))

  $: ideas = answers.filter(e => e == "Ideas").length;
  $: ideas_r = ideas*(212.132/2)/12
  $: ideas_x = Math.round(150-calculate_side(ideas_r))
  $: ideas_y = Math.round(150+calculate_side(ideas_r))

  $: process = answers.filter(e => e == "Process").length;
  $: process_r = process*(212.132/2)/12
  $: process_x = Math.round(150+calculate_side(process_r))
  $: process_y = Math.round(150-calculate_side(process_r))

  $: people = answers.filter(e => e == "People").length;
  $: people_r = people*(212.132/2)/12
  $: people_x = Math.round(150+calculate_side(people_r))
  $: people_y = Math.round(150+calculate_side(people_r))
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

<!-- <p>Action: {action}</p>
<Slider bind:value="{action}" min={0} max={12} step={1} />
<p>Ideas {ideas}</p>
<Slider bind:value="{ideas}" min={0} max={12} step={1} />
<p>Process {process} </p>
<Slider bind:value="{process}" min={0} max={12} step={1} />
<p>People {people}</p>
<Slider bind:value="{people}" min={0} max={12} step={1} /> -->

<br>
 
<Card style="width: 80%; margin-left: 10%;">
    <Content class="mdc-typography--body2" style="display">

        <center>
        {#if page < 40}
        <FormField>
            <Radio bind:group={answers[page]} bind:value={answer_key[page]["A"]} />
            <span slot="label">{questions[page]["A"]}</span>
        </FormField>
        <br>
        <FormField>
            <Radio bind:group={answers[page]} bind:value={answer_key[page]["B"]} />
            <span slot="label">{questions[page]["B"]}</span>
        </FormField>
        {/if}
        {#if page == 40}
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
                    <text transform="matrix(1,0,0,1,44.5,70.777)" style="font-family:'Open Sans';font-weight:400;font-size:20px;font-style:normal;fill:#000000;stroke:none;">Action: {{action}}</text>
                </g>
                <g style="mix-blend-mode:normal;" opacity="0.32">
                    <text transform="matrix(1,0,0,1,187.5,70.777)" style="font-family:'Open Sans';font-weight:400;font-size:20px;font-style:normal;fill:#000000;stroke:none;">Process: {{process}}</text>
                </g>
                <g style="mix-blend-mode:normal;" opacity="0.32">
                    <text transform="matrix(1,0,0,1,49,251.777)" style="font-family:'Open Sans';font-weight:400;font-size:20px;font-style:normal;fill:#000000;stroke:none;">Ideas: {{ideas}}</text>
                </g>
                <g style="mix-blend-mode:normal;" opacity="0.32">
                    <text transform="matrix(1,0,0,1,192,251.777)" style="font-family:'Open Sans';font-weight:400;font-size:20px;font-style:normal;fill:#000000;stroke:none;">People: {{people}}</text>
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
        {/if}
        </center>
    </Content>
  <Actions>
    <ActionButtons>
      <IconButton class="material-icons" disabled={page<=0} on:click={() => page -= 1} title="Share">chevron_left</IconButton>
    </ActionButtons>
    <ActionIcons>
      <IconButton class="material-icons" disabled={page>=40 || answers[page] == null} on:click={() => page +=1} title="Share">chevron_right</IconButton>
    </ActionIcons>
  </Actions>
</Card>
