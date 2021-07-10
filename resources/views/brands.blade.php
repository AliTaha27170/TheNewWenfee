@extends('layouts.app')

@section('content')
<link rel="stylesheet" type="text/css" media="all" href="https://www.terminalx.com/pub/static/version1581550074/_cache/merged-1581550074/83fc09b07a60fa1ee5e912888d4d1078.min.css" />
<link rel="stylesheet" type="text/css" media="screen and (min-width: 768px)" href="https://www.terminalx.com/pub/static/version1581550074/frontend/Idus/terminalx/he_IL/css/styles-l.min.css" />
<link rel="stylesheet" type="text/css" media="print" href="https://www.terminalx.com/pub/static/version1581550074/frontend/Idus/terminalx/he_IL/css/print.min.css" />
<link rel="stylesheet" type="text/css" media="all" href="/pub/idus/style.css" />

<div class="page-main page-brands">
  <div class="page-head-banner page-head-banner-layout-text">

    <h1 class="page-head-banner-title page-title" id="page-title-heading" aria-labelledby="page-title-heading toolbar-amount">
      <span class="base" data-ui-id="page-title-wrapper">BRANDS</span>
    </h1>

  </div>
<!--   <ul class="brand-letters"></ul> -->
  <div class="page-brands__search">
    <div class="search_questions_wrap">
      <svg width="19" height="19" viewBox="0 0 19 19" fill="none" class="icon" xmlns="http://www.w3.org/2000/svg">
        <path d="M13.6224 11.9819C14.5359 10.7345 15.0823 9.20224 15.0823 7.5412C15.0823 3.38312 11.6992 0 7.54112 0C3.38307 0 0 3.38312 0 7.5412C0 11.6993 3.3831 15.0824 7.54115 15.0824C9.20219 15.0824 10.7345 14.5359 11.982 13.6225L16.9223 18.5629L18.5629 16.9223C18.5629 16.9223 13.6224 11.9819 13.6224 11.9819ZM7.54115 12.762C4.66223 12.762 2.32037 10.4201 2.32037 7.5412C2.32037 4.66226 4.66223 2.32038 7.54115 2.32038C10.4201 2.32038 12.7619 4.66226 12.7619 7.5412C12.7619 10.4201 10.42 12.762 7.54115 12.762Z" fill="black" />
      </svg>
      <button class="btn-grey brands-clear">
        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8 16C12.4111 16 16 12.4111 16 8C16 3.58887 12.4111 0 8 0C3.58887 0 0 3.58887 0 8C0 12.4111 3.58887 16 8 16ZM4.76437 5.70706C4.63416 5.57691 4.63416 5.36584 4.76437 5.23566L5.23563 4.76437C5.36584 4.63422 5.57684 4.63422 5.70706 4.76437L8 7.05728L10.2929 4.76434C10.4232 4.63419 10.6342 4.63419 10.7644 4.76434L11.2357 5.23566C11.3659 5.36581 11.3659 5.57688 11.2357 5.70706L8.94272 8.00003L11.2357 10.293C11.3659 10.4231 11.3659 10.6342 11.2357 10.7644L10.7644 11.2357C10.6342 11.3658 10.4232 11.3658 10.2929 11.2357L8 8.94275L5.70706 11.2357C5.57684 11.3658 5.36584 11.3658 5.23563 11.2357L4.76434 10.7644C4.63413 10.6342 4.63413 10.4232 4.76434 10.293L7.05728 8.00003L4.76437 5.70706Z" fill="black"/>
</svg>
      </button>
      <input id="search_questions" name="search" type="search"
             autofocus placeholder="Brands Search" class="input-text" maxlength="128">
    </div>
  </div>
  <span id="Letter">A<hr></span>
  <ul class="brands_list">
    <li class="brand_item">
      <h2 class="brand_logo"><a title="URBAN OUTFITTERS" href="https://www.terminalx.com/brands/urban-outfitters"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/225_96//catalog/category/urbanoutfitters-brand.jpg" alt="URBAN OUTFITTERS" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="MANGO" href="https://www.terminalx.com/brands/mango"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/195_96//catalog/category/mango-logo-2018.jpg" alt="MANGO" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="CALVIN KLEIN" href="https://www.terminalx.com/brands/calvin-klein"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/248_96//catalog/category/ckyvo-brand.jpg" alt="CALVIN KLEIN" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="NIKE" href="https://www.terminalx.com/brands/nike"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/139_96//catalog/category/nike-brand.jpg" alt="NIKE" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="UNIQLO" href="https://www.terminalx.com/brands/uniqlo"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/166_96//catalog/category/uniqloyvo.jpg" alt="UNIQLO" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="LEVIS" href="https://www.terminalx.com/brands/levis"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/123_96//catalog/category/levis-brand.jpg" alt="LEVIS" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="BILLABONG" href="https://www.terminalx.com/brands/billabong"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/319_96//catalog/category/billabong_.jpg" alt="BILLABONG" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="AMERICAN EAGLE" href="https://www.terminalx.com/brands/american-eagle"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/243_96//catalog/category/american_outfitters-brand.JPG" alt="AMERICAN EAGLE" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="VANS" href="https://www.terminalx.com/brands/vans"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/138_96//catalog/category/vans-brand.jpg" alt="VANS" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="ADIDAS" href="https://www.terminalx.com/brands/adidas-all"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/adidas-LOGO.jpg" alt="ADIDAS" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="REEBOK" href="https://www.terminalx.com/brands/reebok"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/LOGO_REEBOK.jpg" alt="REEBOK" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="PUMA" href="https://www.terminalx.com/brands/puma"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/138_96//catalog/category/PUMA-brand.jpg" alt="PUMA" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="SAUCONY" href="https://www.terminalx.com/brands/saucony"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/saucony.jpg" alt="SAUCONY" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="FILA" href="https://www.terminalx.com/brands/fila"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/166_96//catalog/category/Logo-fila-brand.jpg" alt="FILA" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="ANTHROPOLOGIE" href="https://www.terminalx.com/brands/anthropologie"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/215_96//catalog/category/Anthropologie_logo-new-brand.jpg" alt="ANTHROPOLOGIE" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="TERMINAL X" href="https://www.terminalx.com/brands/terminal-x"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/164_96//catalog/category/terminalx-brand.jpg" alt="TERMINAL X" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="GLAMGLOW" href="https://www.terminalx.com/brands/glam-glow"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/195_96//catalog/category/GLAMGLOW.jpg" alt="GLAMGLOW" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="MAC" href="https://www.terminalx.com/brands/maccosmetics"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/195_96//catalog/category/mac-01072018.jpg" alt="MAC" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="BOBBI BROWN" href="https://www.terminalx.com/brands/bobbi-brown"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/195_96//catalog/category/BOBBI-BROWN-brand.jpg" alt="BOBBI BROWN" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="ESTEE LAUDER" href="https://www.terminalx.com/catalog/category/view/s/esteelauder/id/17617/"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/195_96//catalog/category/Estee-Lauder.png" alt="ESTEE LAUDER" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="CLINIQUE" href="https://www.terminalx.com/brands/clinique-israel"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/195_96//catalog/category/CLINIQUE-brand.jpg" alt="CLINIQUE" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="LALINE" href="https://www.terminalx.com/brands/laline-israel"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/110_96//catalog/category/LALINE-LOGO-brand.jpg" alt="LALINE" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="SMASHBOX" href="https://www.terminalx.com/brands/smashbox-israel"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/195_96//catalog/category/SMASHBOX.jpg" alt="SMASHBOX" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="SUPER DRY" href="https://www.terminalx.com/brands/super-dry"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/192_96//catalog/category/SUPERD.jpg" alt="SUPER DRY" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="DOUBLE AGENT" href="https://www.terminalx.com/brands/double-agent"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/96_96//catalog/category/double-agent-brand.jpg" alt="DOUBLE AGENT" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="UNDER ARMOUR" href="https://www.terminalx.com/brands/under-armour"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/115_96//catalog/category/under_armour-brand.jpg" alt="UNDER ARMOUR" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="TOMMY HILFIGER" href="https://www.terminalx.com/brands/tommy-hilfiger"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/241_96//catalog/category/TOMMY-HILFIGER-brand.JPG" alt="TOMMY HILFIGER" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="GLAMOROUS" href="https://www.terminalx.com/brands/glamorous"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/236_96//catalog/category/glamorous.jpg" alt="GLAMOROUS" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="VICTORIA'S SECRET" href="https://www.terminalx.com/brands/victorias-secret"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/202_96//catalog/category/victoriayvo-brand.jpg" alt="VICTORIA'S SECRET" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="AERIE" href="https://www.terminalx.com/brands/aerie"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/148_96//catalog/category/aerie_love_terminalx.jpg" alt="AERIE" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="THE CHILDREN'S PLACE" href="https://www.terminalx.com/brands/the-childrens-place"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/137_96//catalog/category/the_children_s_place-brand.jpg" alt="THE CHILDREN'S PLACE" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="GOORIN BROS" href="https://www.terminalx.com/brands/goorin-bros"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/165_96//catalog/category/Gooring-brand.jpg" alt="GOORIN BROS" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="LIQUOR N POKER" href="https://www.terminalx.com/brands/liquor-n-poker"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/189_96//catalog/category/liquer_n_poker-brand.jpg" alt="LIQUOR N POKER" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="NEW BALANCE" href="https://www.terminalx.com/brands/new-balance"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/161_96//catalog/category/new_balance.jpg" alt="NEW BALANCE" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="LOST INK" href="https://www.terminalx.com/brands/lost-ink"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/197_96//catalog/category/lost-ink-brand.jpg" alt="LOST INK" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="LEE" href="https://www.terminalx.com/brands/lee"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/127_96//catalog/category/lee_new.jpg" alt="LEE" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="RVCA" href="https://www.terminalx.com/brands/rvca"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/168_96//catalog/category/RVCA.jpg" alt="RVCA" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="RAY BAN" href="https://www.terminalx.com/brands/ray-ban"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/146_96//catalog/category/ray_ban.jpg" alt="RAY BAN" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="STEVE MADDEN" href="https://www.terminalx.com/brands/steve-madden"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/218_96//catalog/category/steve_madden.jpg" alt="STEVE MADDEN" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="YANGA" href="https://www.terminalx.com/brands/yanga"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/241_96//catalog/category/yanga-logo-brand.jpg" alt="YANGA" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="REEF" href="https://www.terminalx.com/brands/reef"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/211_96//catalog/category/reef-logo--terminalx.jpg" alt="REEF" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="CONVERSE" href="https://www.terminalx.com/brands/converse"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/253_96//catalog/category/converse.jpg" alt="CONVERSE" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="WRANGLER" href="https://www.terminalx.com/brands/wrangler"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/189_96//catalog/category/wrangler.jpg" alt="WRANGLER" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="RALPH LAUREN" href="https://www.terminalx.com/brands/ralph-lauren"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/111_96//catalog/category/polo-ralph-lauren-brand.jpg" alt="RALPH LAUREN" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="VOGUE EYEWEAR" href="https://www.terminalx.com/brands/vogue"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/470_96//catalog/category/vogue-eyewear1.jpg" alt="VOGUE EYEWEAR" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="HAPPY SOCKS" href="https://www.terminalx.com/brands/happy-socks"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/182_96//catalog/category/happy_socks.jpg" alt="HAPPY SOCKS" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="HERSCHEL" href="https://www.terminalx.com/brands/herschel"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/108_96//catalog/category/herschel-brand.jpg" alt="HERSCHEL" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="ADOLESCENT" href="https://www.terminalx.com/brands/adolescent"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/97_96//catalog/category/adolescent-brand.jpg" alt="ADOLESCENT" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="PALLADIUM" href="https://www.terminalx.com/brands/palladium"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/96_96//catalog/category/palladium-brand.jpg" alt="PALLADIUM" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="JEFFREY CAMPBELL" href="https://www.terminalx.com/brands/jeffrey-campbell"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/202_96//catalog/category/jeffrey-campbell-brand.jpg" alt="JEFFREY CAMPBELL" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="ONE TEASPOON" href="https://www.terminalx.com/brands/one-tea-spoon"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/204_96//catalog/category/one-teaspoon-brand.jpg" alt="ONE TEASPOON" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="FOX" href="https://www.terminalx.com/brands/fox"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/119_96//catalog/category/fox_copy.jpg" alt="FOX" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="FOX HOME" href="https://www.terminalx.com/brands/foxhome"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/166_96//catalog/category/foxhome.png" alt="FOX HOME" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="EMPORIO ARMANI" href="https://www.terminalx.com/terminalx-our-brands/emporio-armani"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/252_96//catalog/category/emporioarmani_black-brand.jpg" alt="EMPORIO ARMANI" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="FRIDAY'S PROJECT" href="https://www.terminalx.com/brands/fridays-project"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/329_96//catalog/category/friday_s-projec1t.jpg" alt="FRIDAY'S PROJECT" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="FOREVER &amp; EVER" href="https://www.terminalx.com/brands/forever-and-ever"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/134_96//catalog/category/FAE-FOREVER-EVER-brand.jpg" alt="FOREVER &amp; EVER" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="FRENCH KICK" href="https://www.terminalx.com/brands/french-kick"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/163_96//catalog/category/logofrenchkick-brand.jpg" alt="FRENCH KICK" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="PEPE JEANS" href="https://www.terminalx.com/brands/pepe-jeans"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/230_96//catalog/category/PEPE-JEANS-brand.jpg" alt="PEPE JEANS" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="HAVAIANAS" href="https://www.terminalx.com/brands/havaianas"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/291_96//catalog/category/havainas-logo-brand.jpg" alt="HAVAIANAS" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="MINIMUM" href="https://www.terminalx.com/brands/minimum"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/224_96//catalog/category/minimum_large.jpg" alt="MINIMUM" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="LULULEMON" href="https://www.terminalx.com/brands/lululemon"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/132_96//catalog/category/lulu-logo.jpg" alt="LULULEMON" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="SKINT &amp; MINTED" href="https://www.terminalx.com/brands/skint-minted"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/96_96//catalog/category/logo-shop_250x.png" alt="SKINT &amp; MINTED" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="THE RAGGED PRIEST" href="https://www.terminalx.com/brands/the-ragged-priest"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/304_96//catalog/category/logo-theraggedpriest-brand.jpg" alt="THE RAGGED PRIEST" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="EASTPAK" href="https://www.terminalx.com/brands/eastpak"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/195_96//catalog/category/eastpak_logo-brand.jpg" alt="EASTPAK" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="NEW ERA" href="https://www.terminalx.com/brands/new-era"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/172_96//catalog/category/new-era-logo-brand.jpg" alt="NEW ERA" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="HYPE" href="https://www.terminalx.com/brands/hype"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/113_96//catalog/category/hype_logo.jpg" alt="HYPE" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="SUPERGA" href="https://www.terminalx.com/brands/superga"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/260_96//catalog/category/superga-brand-logo.jpg" alt="SUPERGA" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="KENDALL + KYLIE" href="https://www.terminalx.com/brands/kendall-kaylie"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/260_96//catalog/category/Logo-wite-brand-logo.jpg" alt="KENDALL + KYLIE" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="NINE WEST" href="https://www.terminalx.com/brands/nine-west"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/260_96//catalog/category/NineWest-brand-logo.jpg" alt="NINE WEST" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="SAM EDELMAN" href="https://www.terminalx.com/brands/sam-edelman"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/260_96//catalog/category/sam---brand-logo.jpg" alt="SAM EDELMAN" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="BAYTON" href="https://www.terminalx.com/brands/bayton"> <img class="brand_logo" src="https://media.terminalx.com/pub/media/resized/260_96//catalog/category/bayton-brand-logo-1.jpg" alt="BAYTON" /> </a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="AINKER" href="https://www.terminalx.com/brands/ainker"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/ainker-brand-logo.jpg" alt="AINKER" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="CHAMPION" href="https://www.terminalx.com/brands/champion"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/champion_1.jpg" alt="CHAMPION" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="GAP" href="https://www.terminalx.com/brands/gap"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/GAP_Logo_LARGE.jpg" alt="GAP" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="BANANA REPUBLIC" href="https://www.terminalx.com/brands/banana-republic"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/Banana_Republic_logo.jpg" alt="BANANA REPUBLIC" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="BANANA REPUBLIC" href="https://www.terminalx.com/brands/birkenstock"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/BIR_Logo.jpg" alt="BIRKENSTOCK" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="BANANA REPUBLIC" href="https://www.terminalx.com/brands/kid-a"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/KID_A_LOGO.jpg" alt="KID A" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="MELISSA" href="https://www.terminalx.com/brands/melissa"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/mell.jpg" alt="MELISSA" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="buffalo" href="https://www.terminalx.com/brands/buffalo"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/_-BUFFALO.JPG" alt="BUFFALO" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="biliblond" href="https://www.terminalx.com/brands/biliblond"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/BiliBlond_logo.jpg" alt="BILIBLOND" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="biliblond" href="https://www.terminalx.com/brands/jansport"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/jansport.jpg" alt="jansport" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="QUIKSILVER" href="https://www.terminalx.com/brands/quicksilver"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/QUIKSILVER.jpg" alt="QUIKSILVER" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="roxy" href="https://www.terminalx.com/brands/roxy"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/ROXY-1.jpg" alt="roxy" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="roxy" href="https://www.terminalx.com/brands/veja"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/veja.jpg" alt="VEJA" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="ellesse" href="https://www.terminalx.com/brands/ellesse"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/ellesse_logo1.png" alt="ELLESSE" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="dickies" href="https://www.terminalx.com/brands/dickies"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/logo-dickies.jpg" alt="dickies" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="dc" href="https://www.terminalx.com/brands/dc"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/dc.jpg" alt="DC" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="GANT" href="https://www.terminalx.com/brands/gant"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/GANT.JPG" alt="GANT" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="g-star-raw" href="https://www.terminalx.com/brands/g-star-raw"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/g-star_logo_new.jpg" alt="GANT" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="nautica" href="https://www.terminalx.com/brands/nautica"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/nautica.jpg
" alt="nautica" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="TIMBERLAND" href="https://www.terminalx.com/brands/timberland"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/timberland.jpg" alt="TIMBERLAND" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="NINO" href="https://www.terminalx.com/brands/nino"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/_NINO.jpg" alt="NINO" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="GUESS" href="https://www.terminalx.com/brands/guess"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/_-GUESS.JPG" alt="GUESS" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="DR. MARTENS" href="https://www.terminalx.com/brands/dr-martens"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/dr-martens.jpg" alt="DR. MARTENS" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="ALL SAINTS" href="https://www.terminalx.com/brands/all-saints"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/AllSaints_Logo-_1_.jpg" alt="ALL SAINTS" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="THE NORTH FACE" href="https://www.terminalx.com/brands/the-north-face"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/northface.jpg" alt="THE NORTH FACE" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="MAYBELLINE NEW-YORK" href="https://www.terminalx.com/brands/maybelline"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/MNY.jpg" alt="MAYBELLINE NEW-YORK" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="L'OREAL PARIS" href="https://www.terminalx.com/brands/loreal"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/LOREAL.jpg" alt="L'OREAL PARIS, LOREAL" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="ESSIE" href="https://www.terminalx.com/brands/essie"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/essie.jpg" alt="ESSIE" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="GARNIER" href="https://www.terminalx.com/brands/garnier"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/garnier.jpg" alt="GARNIER" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="KIMOR X TERMINAL X" href="https://www.terminalx.com/brands/kimor-x-terminal-x"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/KIMOR_X_TERMINAL_X.jpg" alt="KIMOR X TERMINAL X" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="COLUMBIA" href="https://www.terminalx.com/brands/columbia"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/COLUMBIA_1.jpg" alt="COLUMBIA" /></a></h2>
    </li>
    <li class="brand_item">
      <h2 class="brand_logo"><a title="SNEAKER LAB" href="https://www.terminalx.com/brands/sneaker-lab"><img class="brand_logo" src="https://media.terminalx.com/pub/media/catalog/category/sneaker_lab_logo.jpg" alt="SNEAKER LAB" /></a></h2>
    </li>
    <li class="brands-messages" style="display:none;">
      <p>
        
       לא נמצאו תוצאות לחיפוש, אנא נסו שוב.
      </p>
      <button type="button" class="brands-clear btn-grey">
נקה חיפוש        
      </button>
    </li>
  </ul>

</div>

<style>
    .page-brands {
  padding-bottom: 30px;
}
.page-brands ul.brands_list {
  margin: 0;
  font-size: 0;
  padding: 0;
  text-align: center;
  display: flex;
  align-content: center;
  flex-wrap: wrap;
  align-items: stretch;
  justify-content: center;
}
.page-brands ul.brands_list .brands-messages {
  list-style: none;
  padding: 0;
  margin: 0;
}
.page-brands ul.brands_list .brands-messages p {
  font-size: 32px;
  margin-bottom: 24px;
}
.page-brands button.btn-grey:not(.primary) {
  background: #ececec;
  color: #000000;
  border-color: #ececec;
}
.page-brands button.btn-grey:not(.primary):hover, .page-brands button.btn-grey:not(.primary):focus, .page-brands button.btn-grey:not(.primary):active {
  background: #c6c6c6 !important;
  color: #000000;
  border-color: #c6c6c6 !important;
}
.page-brands .search_questions_wrap {
  margin-bottom: 70px;
  text-align: center;
  min-width: 400px;
  width: 400px;
  max-width: 100% !important;
  display: inline-block;
  vertical-align: middle;
  position: relative;
}
@media only screen and (max-width: 600px) {
  .page-brands .search_questions_wrap {
    min-width: initial;
    margin-bottom: 8px;
  }
}
.page-brands .search_questions_wrap::after {
  display: none;
}
.page-brands .search_questions_wrap button.btn-grey {
  position: absolute;
  top: 0;
  bottom: 0;
  right: calc(100% + 15px);
  width: 120px;
  margin: auto;
  opacity: 0;
  display: none;
  justify-content: center;
  align-items: center;
  flex-wrap: nowrap;
  color: #000;
  height: 40px;
}
@media only screen and (max-width: 700px) {
  .page-brands .search_questions_wrap button.btn-grey {
    width: auto;
  }
}
@media only screen and (max-width: 600px) {
  .page-brands .search_questions_wrap button.btn-grey {
    display: none !important;
  }
}
.page-brands .search_questions_wrap button.btn-grey.active {
  display: inline-flex;
  opacity: 1;
}
.page-brands .search_questions_wrap button.btn-grey svg {
  margin-left: 8px;
  width: 18px;
  height: 18px;
  display: block;
}
@media only screen and (max-width: 700px) {
  .page-brands .search_questions_wrap button.btn-grey svg {
    margin-left: 0;
  }
}
.page-brands .search_questions_wrap button.btn-grey span {
  white-space: nowrap;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  flex-wrap: nowrap;
}
@media only screen and (max-width: 700px) {
  .page-brands .search_questions_wrap button.btn-grey span {
    display: none;
  }
}
.page-brands .search_questions_wrap svg.icon {
  right: 10px;
  left: initial;
  position: absolute;
  bottom: 0;
  top: 0;
  margin: auto;
}
.page-brands .search_questions_wrap > input.input-text {
  box-sizing: border-box;
  text-align:center ;
  width: 100%;
  background: #ffffff;
  border: 1px solid #d5d9de;
  color: rgba(0, 0, 0, 0.4);
  font-size: 16px;
  direction: rtl;
  padding: 5px 40px 5px 20px;
  padding-right: 40px;
  min-height: 40px;
  color: #000000;
  font-weight: 500;
  font-size: 16px;
  text-overflow: ellipsis;
}
.page-brands .search_questions_wrap > input.input-text:placeholder {
  font-weight: normal;
}
.page-brands .search_questions_wrap > input.input-text::-webkit-input-placeholder {
  /* Chrome/Opera/Safari */
  font-weight: normal;
}
.page-brands .search_questions_wrap > input.input-text::-moz-placeholder {
  /* Firefox 19+ */
  font-weight: normal;
}
.page-brands .search_questions_wrap > input.input-text:-ms-input-placeholder {
  /* IE 10+ */
  font-weight: normal;
}
.page-brands .search_questions_wrap > input.input-text:-moz-placeholder {
  /* Firefox 18- */
  font-weight: normal;
}
.page-brands .search_questions_wrap > input.input-text:hover, .page-brands .search_questions_wrap > input.input-text:focus, .page-brands .search_questions_wrap > input.input-text:active {
  border: 1px solid #000;
}
.page-brands .search_questions_wrap > input.input-text:focus {
  box-shadow: 0px 4px 16px rgba(0, 0, 0, 0.1) !important;
}
@media only screen and (max-width: 600px) {
  .page-brands .search_questions_wrap > input.input-text {
    padding-right: 35px;
    overflow: hidden;
  }
}
.page-brands li.brand_item {
  text-align: center;
  position: relative;
  width: calc(20% - 32px);
  vertical-align: middle;
  box-sizing: border-box;
  text-transform: uppercase;
  margin: 16px;
  border: 1px solid rgba(213, 217, 222, 0.6);
  display: inline-flex;
  justify-content: stretch;
  align-items: stretch;
  -webkit-transition: all 1s cubic-bezier(0.02, 0.01, 0.47, 1);
  -moz-transition: all 1s cubic-bezier(0.02, 0.01, 0.47, 1);
  transition: all 1s cubic-bezier(0.02, 0.01, 0.47, 1);
}
@media only screen and (max-width: 600px) {
  .page-brands li.brand_item {
    margin: 8px;
  }
}
.page-brands li.brand_item:hover, .page-brands li.brand_item:focus, .page-brands li.brand_item:active {
  border: 1px solid #007B70;
  box-sizing: border-box;
  box-shadow: 0px 4px 16px rgba(0, 0, 0, 0.1);
}
.page-brands h2.brand_logo {
  font-weight: 300;
  line-height: 1.1;
  font-size: 3rem;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: stretch;
  align-items: stretch;
  width: 100%;
}
.page-brands h2.brand_logo a {
  padding: 15px;
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
}
.page-brands img.brand_logo {
  max-height: 8rem;
  width: auto;
  max-width: 100%;
}
@media only screen and (max-width: 900px) {
  .page-brands ul.brands_list li.brand_item {
    width: calc(33.3% - 32px);
  }
}
@media only screen and (max-width: 600px) {
  .page-brands ul.brands_list li.brand_item {
    width: calc(50% - 16px);
  }
}
@keyframes bounceInRight {
  from, 60%, 75%, 90%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
    animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
  }
  from {
    opacity: 0;
    -webkit-transform: translate3d(3000px, 0, 0);
    transform: translate3d(3000px, 0, 0);
  }
  60% {
    opacity: 1;
    -webkit-transform: translate3d(-25px, 0, 0);
    transform: translate3d(-25px, 0, 0);
  }
  75% {
    -webkit-transform: translate3d(10px, 0, 0);
    transform: translate3d(10px, 0, 0);
  }
  90% {
    -webkit-transform: translate3d(-5px, 0, 0);
    transform: translate3d(-5px, 0, 0);
  }
  to {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
  }
}
.page-brands .bounceInRight {
  -webkit-animation-name: bounceInRight;
  animation-name: bounceInRight;
  -webkit-animation-duration: 0.35s;
  animation-duration: 0.35s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}
.page-brands .animated {
  -webkit-animation-duration: 0.35s;
  animation-duration: 0.35s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}
@-webkit-keyframes bounceOutLeft {
  20% {
    opacity: 1;
    -webkit-transform: translate3d(20px, 0, 0);
    transform: translate3d(20px, 0, 0);
  }
  to {
    opacity: 0;
    -webkit-transform: translate3d(-2000px, 0, 0);
    transform: translate3d(-2000px, 0, 0);
  }
}
@keyframes bounceOutLeft {
  20% {
    opacity: 1;
    -webkit-transform: translate3d(20px, 0, 0);
    transform: translate3d(20px, 0, 0);
  }
  to {
    opacity: 0;
    -webkit-transform: translate3d(-2000px, 0, 0);
    transform: translate3d(-2000px, 0, 0);
  }
}
.page-brands .bounceOutLeft {
  -webkit-animation-name: bounceOutLeft;
  animation-name: bounceOutLeft;
  -webkit-animation-duration: 0.35s;
  animation-duration: 0.35s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}

.page-brands .page-head-banner.page-head-banner-layout-text {
  display: block !important;
}

.page-brands__search {
  text-align: center;
  padding: 0 8px;
  height : 25px ;
}

.page-head-banner-title, .page-head-banner-desc
{
    padding: 2rem 0 0;
    margin: 0;
    text-align: center;
    font-family: 'Poppins';
    color: #007B70;
    font-weight: bold;
}
#Letter
{
    font-size: 20px;
    font-weight: bold;
    position: relative;
    top: 20px;
    left: 20px;
}
#Letter hr
{
    width: 95%;
    position: relative;
    left: 2%;
    top: -20px;
}
@media  (max-width: 600px) {
    #Letter hr
  {
    width: 94%;
    position: relative;
    left: 0%;
    top: -20px;
  }
  }
  @media (min-width: 601px) and (max-width: 1000px)
  {
    #Letter hr
  {
    width: 92.5%;
    position: relative;
    left: 3%;
    top: -20px;
  }
  }
</style>

@endsection
