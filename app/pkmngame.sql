


<!DOCTYPE html>
<html lang="en" class="">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    
    <title>PokeBattleDB/pkmngame.sql at master · WebApp2/PokeBattleDB</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="WebApp2/PokeBattleDB" name="twitter:title" /><meta content="Contribute to PokeBattleDB development by creating an account on GitHub." name="twitter:description" /><meta content="https://avatars2.githubusercontent.com/u/11758423?v=3&amp;s=400" name="twitter:image:src" />
      <meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars2.githubusercontent.com/u/11758423?v=3&amp;s=400" property="og:image" /><meta content="WebApp2/PokeBattleDB" property="og:title" /><meta content="https://github.com/WebApp2/PokeBattleDB" property="og:url" /><meta content="Contribute to PokeBattleDB development by creating an account on GitHub." property="og:description" />
      <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">
    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">
    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="web-socket" href="wss://live.github.com/_sockets/MTE3NTg0Nzg6MDU3YjY1ZTc3MWU0M2UxYjcxOTdkODU4YWMxYjAyZjY6ZWNhNzdkNGFhYmVhNjE3YmY2ODUwM2FhYjI3MmZhNTMxY2NjYjFhMzRlZjcxOTgyYjIyNTBmMmNlOGFhMTA1Ng==--f3aa04549d43353512f852ee8ba1c783923f1641">
    <meta name="pjax-timeout" content="1000">
    <link rel="sudo-modal" href="/sessions/sudo_modal">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="AC0B4EEA:5678:56EC8B8:553981A0" name="octolytics-dimension-request_id" /><meta content="11758478" name="octolytics-actor-id" /><meta content="bmorris03" name="octolytics-actor-login" /><meta content="2ffcc3dc0f3e5474f547ecedca325c61718d8d32387a7e1ae776e74ad7cc7491" name="octolytics-actor-hash" />
    
    <meta content="Rails, view, blob#show" name="analytics-event" />
    <meta class="js-ga-set" name="dimension1" content="Logged In">
    <meta class="js-ga-set" name="dimension2" content="Header v3">
    <meta name="is-dotcom" content="true">
    <meta name="hostname" content="github.com">
    <meta name="user-login" content="bmorris03">

    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param" />
<meta content="hLHaxImK2KqdHuS6eGyvBHcq8sYgQfEXdUSJ6aDs5jvfxxuqjomtbnOpBS/OSWoPynMJSAmN3xE39YAHm9bHFQ==" name="csrf-token" />

    <link href="https://assets-cdn.github.com/assets/github-fbb88baa8c28184f25d1a972d401bb2e63fbed64378a172707460803c12c0440.css" media="all" rel="stylesheet" />
    <link href="https://assets-cdn.github.com/assets/github2-b11477f9aa851e67e46efbb84c8c2c776615ebb9fb07c4551873a066c4e48f67.css" media="all" rel="stylesheet" />
    
    


    <meta http-equiv="x-pjax-version" content="dd45ac9a07a24b9779f43a888c4447e3">

      
  <meta name="description" content="Contribute to PokeBattleDB development by creating an account on GitHub.">
  <meta name="go-import" content="github.com/WebApp2/PokeBattleDB git https://github.com/WebApp2/PokeBattleDB.git">

  <meta content="11758423" name="octolytics-dimension-user_id" /><meta content="WebApp2" name="octolytics-dimension-user_login" /><meta content="34419876" name="octolytics-dimension-repository_id" /><meta content="WebApp2/PokeBattleDB" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="34419876" name="octolytics-dimension-repository_network_root_id" /><meta content="WebApp2/PokeBattleDB" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/WebApp2/PokeBattleDB/commits/master.atom" rel="alternate" title="Recent Commits to PokeBattleDB:master" type="application/atom+xml">

  </head>


  <body class="logged_in  env-production windows vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      


        <div class="header header-logged-in true" role="banner">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/" data-hotkey="g d" aria-label="Homepage" data-ga-click="Header, go to dashboard, icon:logo">
  <span class="mega-octicon octicon-mark-github"></span>
</a>


      <div class="site-search repo-scope js-site-search" role="search">
          <form accept-charset="UTF-8" action="/WebApp2/PokeBattleDB/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/WebApp2/PokeBattleDB/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <input type="text"
    class="js-site-search-field is-clearable"
    data-hotkey="s"
    name="q"
    placeholder="Search"
    data-global-scope-placeholder="Search GitHub"
    data-repo-scope-placeholder="Search"
    tabindex="1"
    autocapitalize="off">
  <div class="scope-badge">This repository</div>
</form>
      </div>

      <ul class="header-nav left" role="navigation">
          <li class="header-nav-item explore">
            <a class="header-nav-link" href="/explore" data-ga-click="Header, go to explore, text:explore">Explore</a>
          </li>
            <li class="header-nav-item">
              <a class="header-nav-link" href="https://gist.github.com" data-ga-click="Header, go to gist, text:gist">Gist</a>
            </li>
            <li class="header-nav-item">
              <a class="header-nav-link" href="/blog" data-ga-click="Header, go to blog, text:blog">Blog</a>
            </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://help.github.com" data-ga-click="Header, go to help, text:help">Help</a>
          </li>
      </ul>

      
<ul class="header-nav user-nav right" id="user-links">
  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link name" href="/bmorris03" data-ga-click="Header, go to profile, text:username">
      <img alt="@bmorris03" class="avatar" data-user="11758478" height="20" src="https://avatars2.githubusercontent.com/u/11758478?v=3&amp;s=40" width="20" />
      <span class="css-truncate">
        <span class="css-truncate-target">bmorris03</span>
      </span>
    </a>
  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link js-menu-target tooltipped tooltipped-s" href="/new" aria-label="Create new..." data-ga-click="Header, create new, icon:add">
      <span class="octicon octicon-plus"></span>
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <ul class="dropdown-menu">
        
<li>
  <a href="/new" data-ga-click="Header, create new repository, icon:repo"><span class="octicon octicon-repo"></span> New repository</a>
</li>
<li>
  <a href="/organizations/new" data-ga-click="Header, create new organization, icon:organization"><span class="octicon octicon-organization"></span> New organization</a>
</li>
  <li class="dropdown-divider"></li>
  <li class="dropdown-header">
    <span title="WebApp2">This organization</span>
  </li>

  <li>
    <a href="/orgs/WebApp2/invitations/new" data-ga-click="Header, invite someone, icon:person"><span class="octicon octicon-person"></span> Invite someone</a>
  </li>

  <li>
    <a href="/orgs/WebApp2/new-team" data-ga-click="Header, create new team, icon:jersey"><span class="octicon octicon-jersey"></span> New team</a>
  </li>

  <li>
    <a href="/organizations/WebApp2/repositories/new" data-ga-click="Header, create new organization repository, icon:repo"><span class="octicon octicon-repo"></span> New repository</a>
  </li>


  <li class="dropdown-divider"></li>
  <li class="dropdown-header">
    <span title="WebApp2/PokeBattleDB">This repository</span>
  </li>
    <li>
      <a href="/WebApp2/PokeBattleDB/issues/new" data-ga-click="Header, create new issue, icon:issue"><span class="octicon octicon-issue-opened"></span> New issue</a>
    </li>
    <li>
      <a href="/WebApp2/PokeBattleDB/settings/collaboration" data-ga-click="Header, create new collaborator, icon:person"><span class="octicon octicon-person"></span> New collaborator</a>
    </li>

      </ul>
    </div>
  </li>

  <li class="header-nav-item">
      <span 
        data-channel="notification-changed:bmorris03"
        data-url="/notifications/header">
      <a href="/notifications" aria-label="You have no unread notifications" class="header-nav-link notification-indicator tooltipped tooltipped-s" data-ga-click="Header, go to notifications, icon:read" data-hotkey="g n">
          <span class="mail-status all-read"></span>
          <span class="octicon octicon-inbox"></span>
</a>  </span>

  </li>

  <li class="header-nav-item">
    <a class="header-nav-link tooltipped tooltipped-s" href="/settings/profile" id="account_settings" aria-label="Settings" data-ga-click="Header, go to settings, icon:settings">
      <span class="octicon octicon-gear"></span>
    </a>
  </li>

  <li class="header-nav-item">
    <form accept-charset="UTF-8" action="/logout" class="logout-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="KrjcvVCudOacGdrg9dFxtPfhktItmjtY3dR0UaFFMLhZvubVa8TZFKEZSLPmmreabTt79Ih7RwyT4Sp7o+W9JA==" /></div>
      <button class="header-nav-link sign-out-button tooltipped tooltipped-s" aria-label="Sign out" data-ga-click="Header, sign out, icon:logout">
        <span class="octicon octicon-sign-out"></span>
      </button>
</form>  </li>

</ul>



    
  </div>
</div>

        

        


      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        
<ul class="pagehead-actions">

  <li>
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="EygeEyn/npcNl4y3ExLJqZczFv00PvTrk3jQl9fJP54zVyZ3PZ+mAMpRCTFwaxB8ggwtoa+puFndgQptJVzDqA==" /></div>    <input id="repository_id" name="repository_id" type="hidden" value="34419876" />

      <div class="select-menu js-menu-container js-select-menu">
        <a href="/WebApp2/PokeBattleDB/subscription"
          class="btn btn-sm btn-with-count select-menu-button js-menu-target" role="button" tabindex="0" aria-haspopup="true"
          data-ga-click="Repository, click Watch settings, action:blob#show">
          <span class="js-select-button">
            <span class="octicon octicon-eye"></span>
            Unwatch
          </span>
        </a>
        <a class="social-count js-social-count" href="/WebApp2/PokeBattleDB/watchers">
          3
        </a>

        <div class="select-menu-modal-holder">
          <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
            <div class="select-menu-header">
              <span class="select-menu-title">Notifications</span>
              <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
            </div>

            <div class="select-menu-list js-navigation-container" role="menu">

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_included" name="do" type="radio" value="included" />
                  <span class="select-menu-item-heading">Not watching</span>
                  <span class="description">Be notified when participating or @mentioned.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Watch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input checked="checked" id="do_subscribed" name="do" type="radio" value="subscribed" />
                  <span class="select-menu-item-heading">Watching</span>
                  <span class="description">Be notified of all conversations.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Unwatch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_ignore" name="do" type="radio" value="ignore" />
                  <span class="select-menu-item-heading">Ignoring</span>
                  <span class="description">Never be notified.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-mute"></span>
                    Stop ignoring
                  </span>
                </div>
              </div>

            </div>

          </div>
        </div>
      </div>
</form>
  </li>

  <li>
    
  <div class="js-toggler-container js-social-container starring-container ">

    <form accept-charset="UTF-8" action="/WebApp2/PokeBattleDB/unstar" class="js-toggler-form starred js-unstar-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="HIRlan/6mXsfSoZHyCIAe8WmlpZhJ8Lk2ZW15FjCVc6YTg3iFrX+Mw4paXkPvN1SS4F8SpSmdYJ+oEH5X0cuJw==" /></div>
      <button
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Unstar this repository" title="Unstar WebApp2/PokeBattleDB"
        data-ga-click="Repository, click unstar button, action:blob#show; text:Unstar">
        <span class="octicon octicon-star"></span>
        Unstar
      </button>
        <a class="social-count js-social-count" href="/WebApp2/PokeBattleDB/stargazers">
          0
        </a>
</form>
    <form accept-charset="UTF-8" action="/WebApp2/PokeBattleDB/star" class="js-toggler-form unstarred js-star-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="FudrJpIHm2HuPBpXd0MJ9EaRxV1e8UJiAEoGdQftO8inYuzGzGdFvZq3SG3nIuxPM0r3sX9Pqcvl2SYVWW4MHQ==" /></div>
      <button
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Star this repository" title="Star WebApp2/PokeBattleDB"
        data-ga-click="Repository, click star button, action:blob#show; text:Star">
        <span class="octicon octicon-star"></span>
        Star
      </button>
        <a class="social-count js-social-count" href="/WebApp2/PokeBattleDB/stargazers">
          0
        </a>
</form>  </div>

  </li>

        <li>
          <a href="#fork-destination-box" class="btn btn-sm btn-with-count"
              title="Fork your own copy of WebApp2/PokeBattleDB to your account"
              aria-label="Fork your own copy of WebApp2/PokeBattleDB to your account"
              rel="facebox"
              data-ga-click="Repository, show fork modal, action:blob#show; text:Fork">
            <span class="octicon octicon-repo-forked"></span>
            Fork
          </a>
          <a href="/WebApp2/PokeBattleDB/network" class="social-count">0</a>

          <div id="fork-destination-box" style="display: none;">
            <h2 class="facebox-header">Where should we fork this repository?</h2>
            <include-fragment src=""
                class="js-fork-select-fragment fork-select-fragment"
                data-url="/WebApp2/PokeBattleDB/fork?fragment=1">
              <img alt="Loading" height="64" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-128-338974454bb5c32803e82f601beb051d373744b024fe8742a76009700fd7e033.gif" width="64" />
            </include-fragment>
          </div>
        </li>

</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/WebApp2" class="url fn" itemprop="url" rel="author"><span itemprop="title">WebApp2</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/WebApp2/PokeBattleDB" class="js-current-repository" data-pjax="#js-repo-pjax-container">PokeBattleDB</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            
<nav class="sunken-menu repo-nav js-repo-nav js-sidenav-container-pjax js-octicon-loaders"
     role="navigation"
     data-pjax="#js-repo-pjax-container"
     data-issue-count-url="/WebApp2/PokeBattleDB/issues/counts">
  <ul class="sunken-menu-group">
    <li class="tooltipped tooltipped-w" aria-label="Code">
      <a href="/WebApp2/PokeBattleDB" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /WebApp2/PokeBattleDB">
        <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Issues">
        <a href="/WebApp2/PokeBattleDB/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /WebApp2/PokeBattleDB/issues">
          <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
          <span class="js-issue-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>      </li>

    <li class="tooltipped tooltipped-w" aria-label="Pull requests">
      <a href="/WebApp2/PokeBattleDB/pulls" aria-label="Pull requests" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g p" data-selected-links="repo_pulls /WebApp2/PokeBattleDB/pulls">
          <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull requests</span>
          <span class="js-pull-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Wiki">
        <a href="/WebApp2/PokeBattleDB/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g w" data-selected-links="repo_wiki /WebApp2/PokeBattleDB/wiki">
          <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>      </li>
  </ul>
  <div class="sunken-menu-separator"></div>
  <ul class="sunken-menu-group">

    <li class="tooltipped tooltipped-w" aria-label="Pulse">
      <a href="/WebApp2/PokeBattleDB/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-selected-links="pulse /WebApp2/PokeBattleDB/pulse">
        <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

    <li class="tooltipped tooltipped-w" aria-label="Graphs">
      <a href="/WebApp2/PokeBattleDB/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_graphs repo_contributors /WebApp2/PokeBattleDB/graphs">
        <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>
  </ul>


    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">
      <li class="tooltipped tooltipped-w" aria-label="Settings">
        <a href="/WebApp2/PokeBattleDB/settings" aria-label="Settings" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_settings /WebApp2/PokeBattleDB/settings">
          <span class="octicon octicon-tools"></span> <span class="full-word">Settings</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>      </li>
    </ul>
</nav>

              <div class="only-with-full-nav">
                  
<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/WebApp2/PokeBattleDB.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url "
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone">
  <h3><span class="text-emphasized">SSH</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="git@github.com:WebApp2/PokeBattleDB.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/WebApp2/PokeBattleDB" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>



<p class="clone-options">You can clone with
  <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>, <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>, or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</p>


  <a href="github-windows://openRepo/https://github.com/WebApp2/PokeBattleDB" class="btn btn-sm sidebar-button" title="Save WebApp2/PokeBattleDB to your computer and use it in GitHub Desktop." aria-label="Save WebApp2/PokeBattleDB to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>


                <a href="/WebApp2/PokeBattleDB/archive/master.zip"
                   class="btn btn-sm sidebar-button"
                   aria-label="Download the contents of WebApp2/PokeBattleDB as a zip file"
                   title="Download the contents of WebApp2/PokeBattleDB as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          

<a href="/WebApp2/PokeBattleDB/blob/ba280768adc4b9512625e5191e376aad09df8b7b/pkmngame.sql" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:28f08550cddea7b9fa65862641df8533 -->

<div class="file-navigation js-zeroclipboard-container">
  
<div class="select-menu js-menu-container js-select-menu left">
  <span class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    title="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Find or create a branch…" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Find or create a branch…">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Find or create a branch…" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/WebApp2/PokeBattleDB/blob/master/pkmngame.sql"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="master">
                master
              </span>
            </a>
        </div>

          <form accept-charset="UTF-8" action="/WebApp2/PokeBattleDB/branches" class="js-create-branch select-menu-item select-menu-new-item-form js-navigation-item js-new-item-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="BvaHJPDadb3H7CqZWL8ThqWHlAy8Gu9uz0XoWRLNDhKAWBSCrnyX079qnkVMwC+4IAYNUFXgl/5VxzLWr09sNQ==" /></div>
            <span class="octicon octicon-git-branch select-menu-item-icon"></span>
            <div class="select-menu-item-text">
              <span class="select-menu-item-heading">Create branch: <span class="js-new-item-name"></span></span>
              <span class="description">from ‘master’</span>
            </div>
            <input type="hidden" name="name" id="name" class="js-new-item-value">
            <input type="hidden" name="branch" id="branch" value="master">
            <input type="hidden" name="path" id="path" value="pkmngame.sql">
</form>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

  <div class="btn-group right">
    <a href="/WebApp2/PokeBattleDB/find/master"
          class="js-show-file-finder btn btn-sm empty-icon tooltipped tooltipped-s"
          data-pjax
          data-hotkey="t"
          aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
  </div>

  <div class="breadcrumb js-zeroclipboard-target">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/WebApp2/PokeBattleDB" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">PokeBattleDB</span></a></span></span><span class="separator">/</span><strong class="final-path">pkmngame.sql</strong>
  </div>
</div>


  <div class="commit file-history-tease">
    <div class="file-history-tease-header">
        <img alt="@rnice01" class="avatar" data-user="11394384" height="24" src="https://avatars2.githubusercontent.com/u/11394384?v=3&amp;s=48" width="24" />
        <span class="author"><a href="/rnice01" rel="contributor">rnice01</a></span>
        <time datetime="2015-04-22T22:42:25Z" is="relative-time">Apr 22, 2015</time>
        <div class="commit-title">
            <a href="/WebApp2/PokeBattleDB/commit/ba280768adc4b9512625e5191e376aad09df8b7b" class="message" data-pjax="true" title="Pokemon DB">Pokemon DB</a>
        </div>
    </div>

    <div class="participation">
      <p class="quickstat">
        <a href="#blob_contributors_box" rel="facebox">
          <strong>1</strong>
           contributor
        </a>
      </p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img alt="@rnice01" data-user="11394384" height="24" src="https://avatars2.githubusercontent.com/u/11394384?v=3&amp;s=48" width="24" />
            <a href="/rnice01">rnice01</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file">
  <div class="file-header">
    <div class="file-actions">

      <div class="btn-group">
        <a href="/WebApp2/PokeBattleDB/raw/master/pkmngame.sql" class="btn btn-sm " id="raw-url">Raw</a>
          <a href="/WebApp2/PokeBattleDB/blame/master/pkmngame.sql" class="btn btn-sm js-update-url-with-hash">Blame</a>
        <a href="/WebApp2/PokeBattleDB/commits/master/pkmngame.sql" class="btn btn-sm " rel="nofollow">History</a>
      </div>

        <a class="octicon-btn tooltipped tooltipped-nw"
           href="github-windows://openRepo/https://github.com/WebApp2/PokeBattleDB?branch=master&amp;filepath=pkmngame.sql"
           aria-label="Open this file in GitHub for Windows">
            <span class="octicon octicon-device-desktop"></span>
        </a>

            <form accept-charset="UTF-8" action="/WebApp2/PokeBattleDB/edit/master/pkmngame.sql" class="inline-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="qH91kF3htm3DCH0dqYYvU1ay9PWG/8+WLYRFlWSvZ+E0fFrbojGuQ+QIvblzFhv7zBsQe5qtlG0bRg5UlQ//cQ==" /></div>
              <button class="octicon-btn tooltipped tooltipped-n" type="submit" aria-label="Edit this file" data-hotkey="e" data-disable-with>
                <span class="octicon octicon-pencil"></span>
              </button>
</form>
          <form accept-charset="UTF-8" action="/WebApp2/PokeBattleDB/delete/master/pkmngame.sql" class="inline-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="ERI0CLYZVFMDOnAXYoSYwvo3Bty96CvDj54W4kkDHyoLR1XiEcuiRjDSRnPku0YhA0XKaAADM2KAo5wheqyGqQ==" /></div>
            <button class="octicon-btn octicon-btn-danger tooltipped tooltipped-n" type="submit" aria-label="Delete this file" data-disable-with>
              <span class="octicon octicon-trashcan"></span>
            </button>
</form>    </div>

    <div class="file-info">
        165 lines (132 sloc)
        <span class="file-info-divider"></span>
      4.697 kb
    </div>
  </div>
  
  <div class="blob-wrapper data type-sql">
      <table class="highlight tab-size-8 js-file-line-container">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- phpMyAdmin SQL Dump</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- version 4.2.11</span></td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- http://www.phpmyadmin.net</span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Host: 127.0.0.1</span></td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Generation Time: Apr 23, 2015 at 12:31 AM</span></td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Server version: 5.6.21</span></td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- PHP Version: 5.6.3</span></td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code blob-code-inner js-file-line"><span class="pl-k">SET</span> SQL_MODE <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>NO_AUTO_VALUE_ON_ZERO<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code blob-code-inner js-file-line"><span class="pl-k">SET</span> time_zone <span class="pl-k">=</span> <span class="pl-s"><span class="pl-pds">&quot;</span>+00:00<span class="pl-pds">&quot;</span></span>;</td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code blob-code-inner js-file-line"><span class="pl-c">/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */</span>;</td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code blob-code-inner js-file-line"><span class="pl-c">/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */</span>;</td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code blob-code-inner js-file-line"><span class="pl-c">/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */</span>;</td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code blob-code-inner js-file-line"><span class="pl-c">/*!40101 SET NAMES utf8 */</span>;</td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Database: `pkmngame`</span></td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- --------------------------------------------------------</span></td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Table structure for table `guest`</span></td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code blob-code-inner js-file-line"><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">IF</span> NOT EXISTS <span class="pl-s"><span class="pl-pds">`</span>guest<span class="pl-pds">`</span></span> (</td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>username<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>guest_pokemon_fk<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span></td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code blob-code-inner js-file-line">) ENGINE<span class="pl-k">=</span>InnoDB DEFAULT CHARSET<span class="pl-k">=</span>latin1;</td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- --------------------------------------------------------</span></td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Table structure for table `moves`</span></td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code blob-code-inner js-file-line"><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">IF</span> NOT EXISTS <span class="pl-s"><span class="pl-pds">`</span>moves<span class="pl-pds">`</span></span> (</td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>attack_type_pk<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>attack_name<span class="pl-pds">`</span></span> <span class="pl-k">char</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>base_damage<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span></td>
      </tr>
      <tr>
        <td id="L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-code blob-code-inner js-file-line">) ENGINE<span class="pl-k">=</span>InnoDB DEFAULT CHARSET<span class="pl-k">=</span>latin1;</td>
      </tr>
      <tr>
        <td id="L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L47" class="blob-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Dumping data for table `moves`</span></td>
      </tr>
      <tr>
        <td id="L48" class="blob-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L49" class="blob-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L50" class="blob-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-code blob-code-inner js-file-line"><span class="pl-k">INSERT INTO</span> <span class="pl-s"><span class="pl-pds">`</span>moves<span class="pl-pds">`</span></span> (<span class="pl-s"><span class="pl-pds">`</span>attack_type_pk<span class="pl-pds">`</span></span>, <span class="pl-s"><span class="pl-pds">`</span>attack_name<span class="pl-pds">`</span></span>, <span class="pl-s"><span class="pl-pds">`</span>base_damage<span class="pl-pds">`</span></span>) <span class="pl-k">VALUES</span></td>
      </tr>
      <tr>
        <td id="L51" class="blob-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">1</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Bubble<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">5</span>),</td>
      </tr>
      <tr>
        <td id="L52" class="blob-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">2</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Ember<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">5</span>),</td>
      </tr>
      <tr>
        <td id="L53" class="blob-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-code blob-code-inner js-file-line">(<span class="pl-c1">3</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>Absorb<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">3</span>);</td>
      </tr>
      <tr>
        <td id="L54" class="blob-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L55" class="blob-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- --------------------------------------------------------</span></td>
      </tr>
      <tr>
        <td id="L56" class="blob-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L57" class="blob-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L58" class="blob-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Table structure for table `pokemon`</span></td>
      </tr>
      <tr>
        <td id="L59" class="blob-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L60" class="blob-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L61" class="blob-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-code blob-code-inner js-file-line"><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">IF</span> NOT EXISTS <span class="pl-s"><span class="pl-pds">`</span>pokemon<span class="pl-pds">`</span></span> (</td>
      </tr>
      <tr>
        <td id="L62" class="blob-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>name<span class="pl-pds">`</span></span> <span class="pl-k">varchar</span>(<span class="pl-c1">30</span>) <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L63" class="blob-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>health<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L64" class="blob-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>attack<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L65" class="blob-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-code blob-code-inner js-file-line"><span class="pl-s"><span class="pl-pds">`</span>pokemon_id<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L66" class="blob-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>pokemon_type<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L67" class="blob-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>experience<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L68" class="blob-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>i_choose_you<span class="pl-pds">`</span></span> <span class="pl-k">tinyint</span>(<span class="pl-c1">4</span>) <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L69" class="blob-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>image_url<span class="pl-pds">`</span></span> <span class="pl-k">text</span> <span class="pl-k">NOT NULL</span></td>
      </tr>
      <tr>
        <td id="L70" class="blob-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-code blob-code-inner js-file-line">) ENGINE<span class="pl-k">=</span>InnoDB AUTO_INCREMENT<span class="pl-k">=</span><span class="pl-c1">10</span> DEFAULT CHARSET<span class="pl-k">=</span>latin1;</td>
      </tr>
      <tr>
        <td id="L71" class="blob-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L72" class="blob-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L73" class="blob-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Dumping data for table `pokemon`</span></td>
      </tr>
      <tr>
        <td id="L74" class="blob-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L75" class="blob-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L76" class="blob-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-code blob-code-inner js-file-line"><span class="pl-k">INSERT INTO</span> <span class="pl-s"><span class="pl-pds">`</span>pokemon<span class="pl-pds">`</span></span> (<span class="pl-s"><span class="pl-pds">`</span>name<span class="pl-pds">`</span></span>, <span class="pl-s"><span class="pl-pds">`</span>health<span class="pl-pds">`</span></span>, <span class="pl-s"><span class="pl-pds">`</span>attack<span class="pl-pds">`</span></span>, <span class="pl-s"><span class="pl-pds">`</span>pokemon_id<span class="pl-pds">`</span></span>, <span class="pl-s"><span class="pl-pds">`</span>pokemon_type<span class="pl-pds">`</span></span>, <span class="pl-s"><span class="pl-pds">`</span>experience<span class="pl-pds">`</span></span>, <span class="pl-s"><span class="pl-pds">`</span>i_choose_you<span class="pl-pds">`</span></span>, <span class="pl-s"><span class="pl-pds">`</span>image_url<span class="pl-pds">`</span></span>) <span class="pl-k">VALUES</span></td>
      </tr>
      <tr>
        <td id="L77" class="blob-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-code blob-code-inner js-file-line">(<span class="pl-s"><span class="pl-pds">&#39;</span>Bulbasaur<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">45</span>, <span class="pl-c1">49</span>, <span class="pl-c1">1</span>, <span class="pl-c1">3</span>, <span class="pl-c1">0</span>, <span class="pl-c1">0</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>http://i1381.photobucket.com/albums/ah212/rnice01/bulbasaur_zpsjho2pzlc.jpg<span class="pl-pds">&#39;</span></span>),</td>
      </tr>
      <tr>
        <td id="L78" class="blob-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-code blob-code-inner js-file-line">(<span class="pl-s"><span class="pl-pds">&#39;</span>Ivysaur<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">60</span>, <span class="pl-c1">49</span>, <span class="pl-c1">2</span>, <span class="pl-c1">3</span>, <span class="pl-c1">10</span>, <span class="pl-c1">0</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>http://i1381.photobucket.com/albums/ah212/rnice01/ivysaur_zpsr5yhydsz.jpg<span class="pl-pds">&#39;</span></span>),</td>
      </tr>
      <tr>
        <td id="L79" class="blob-num js-line-number" data-line-number="79"></td>
        <td id="LC79" class="blob-code blob-code-inner js-file-line">(<span class="pl-s"><span class="pl-pds">&#39;</span>Venusaur<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">80</span>, <span class="pl-c1">82</span>, <span class="pl-c1">3</span>, <span class="pl-c1">3</span>, <span class="pl-c1">20</span>, <span class="pl-c1">0</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>http://i1381.photobucket.com/albums/ah212/rnice01/venusaur_zpse4uumqqk.jpg<span class="pl-pds">&#39;</span></span>),</td>
      </tr>
      <tr>
        <td id="L80" class="blob-num js-line-number" data-line-number="80"></td>
        <td id="LC80" class="blob-code blob-code-inner js-file-line">(<span class="pl-s"><span class="pl-pds">&#39;</span>Charmander<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">39</span>, <span class="pl-c1">52</span>, <span class="pl-c1">4</span>, <span class="pl-c1">2</span>, <span class="pl-c1">0</span>, <span class="pl-c1">0</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>http://i1381.photobucket.com/albums/ah212/rnice01/charmander_zpsuow9rnpb.jpg<span class="pl-pds">&#39;</span></span>),</td>
      </tr>
      <tr>
        <td id="L81" class="blob-num js-line-number" data-line-number="81"></td>
        <td id="LC81" class="blob-code blob-code-inner js-file-line">(<span class="pl-s"><span class="pl-pds">&#39;</span>Charmeleon<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">58</span>, <span class="pl-c1">64</span>, <span class="pl-c1">5</span>, <span class="pl-c1">2</span>, <span class="pl-c1">10</span>, <span class="pl-c1">0</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>http://i1381.photobucket.com/albums/ah212/rnice01/charmeleon_zpsgyfeae3i.jpg<span class="pl-pds">&#39;</span></span>),</td>
      </tr>
      <tr>
        <td id="L82" class="blob-num js-line-number" data-line-number="82"></td>
        <td id="LC82" class="blob-code blob-code-inner js-file-line">(<span class="pl-s"><span class="pl-pds">&#39;</span>Charizard<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">78</span>, <span class="pl-c1">84</span>, <span class="pl-c1">6</span>, <span class="pl-c1">2</span>, <span class="pl-c1">20</span>, <span class="pl-c1">0</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>http://i1381.photobucket.com/albums/ah212/rnice01/charizard_zpsfqdw6d8a.jpg<span class="pl-pds">&#39;</span></span>),</td>
      </tr>
      <tr>
        <td id="L83" class="blob-num js-line-number" data-line-number="83"></td>
        <td id="LC83" class="blob-code blob-code-inner js-file-line">(<span class="pl-s"><span class="pl-pds">&#39;</span>Squirtle<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">44</span>, <span class="pl-c1">48</span>, <span class="pl-c1">7</span>, <span class="pl-c1">1</span>, <span class="pl-c1">0</span>, <span class="pl-c1">0</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>http://i1381.photobucket.com/albums/ah212/rnice01/squirtle_zpsay4iclgd.jpg<span class="pl-pds">&#39;</span></span>),</td>
      </tr>
      <tr>
        <td id="L84" class="blob-num js-line-number" data-line-number="84"></td>
        <td id="LC84" class="blob-code blob-code-inner js-file-line">(<span class="pl-s"><span class="pl-pds">&#39;</span>Wartortle<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">59</span>, <span class="pl-c1">63</span>, <span class="pl-c1">8</span>, <span class="pl-c1">1</span>, <span class="pl-c1">10</span>, <span class="pl-c1">0</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>http://i1381.photobucket.com/albums/ah212/rnice01/wartortle_zpsyesxk1qi.jpg<span class="pl-pds">&#39;</span></span>),</td>
      </tr>
      <tr>
        <td id="L85" class="blob-num js-line-number" data-line-number="85"></td>
        <td id="LC85" class="blob-code blob-code-inner js-file-line">(<span class="pl-s"><span class="pl-pds">&#39;</span>Blastoise<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">79</span>, <span class="pl-c1">83</span>, <span class="pl-c1">9</span>, <span class="pl-c1">1</span>, <span class="pl-c1">20</span>, <span class="pl-c1">0</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>http://i1381.photobucket.com/albums/ah212/rnice01/blastoise_zps4efdz1mt.jpg<span class="pl-pds">&#39;</span></span>);</td>
      </tr>
      <tr>
        <td id="L86" class="blob-num js-line-number" data-line-number="86"></td>
        <td id="LC86" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L87" class="blob-num js-line-number" data-line-number="87"></td>
        <td id="LC87" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- --------------------------------------------------------</span></td>
      </tr>
      <tr>
        <td id="L88" class="blob-num js-line-number" data-line-number="88"></td>
        <td id="LC88" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L89" class="blob-num js-line-number" data-line-number="89"></td>
        <td id="LC89" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L90" class="blob-num js-line-number" data-line-number="90"></td>
        <td id="LC90" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Table structure for table `user`</span></td>
      </tr>
      <tr>
        <td id="L91" class="blob-num js-line-number" data-line-number="91"></td>
        <td id="LC91" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L92" class="blob-num js-line-number" data-line-number="92"></td>
        <td id="LC92" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L93" class="blob-num js-line-number" data-line-number="93"></td>
        <td id="LC93" class="blob-code blob-code-inner js-file-line"><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">IF</span> NOT EXISTS <span class="pl-s"><span class="pl-pds">`</span>user<span class="pl-pds">`</span></span> (</td>
      </tr>
      <tr>
        <td id="L94" class="blob-num js-line-number" data-line-number="94"></td>
        <td id="LC94" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>id<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L95" class="blob-num js-line-number" data-line-number="95"></td>
        <td id="LC95" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>username<span class="pl-pds">`</span></span> tinyblob <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L96" class="blob-num js-line-number" data-line-number="96"></td>
        <td id="LC96" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>password<span class="pl-pds">`</span></span> tinyblob <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L97" class="blob-num js-line-number" data-line-number="97"></td>
        <td id="LC97" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>user_pokemon_fk<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L98" class="blob-num js-line-number" data-line-number="98"></td>
        <td id="LC98" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>user_experience<span class="pl-pds">`</span></span> <span class="pl-k">char</span>(<span class="pl-c1">10</span>) <span class="pl-k">NOT NULL</span></td>
      </tr>
      <tr>
        <td id="L99" class="blob-num js-line-number" data-line-number="99"></td>
        <td id="LC99" class="blob-code blob-code-inner js-file-line">) ENGINE<span class="pl-k">=</span>InnoDB DEFAULT CHARSET<span class="pl-k">=</span>latin1;</td>
      </tr>
      <tr>
        <td id="L100" class="blob-num js-line-number" data-line-number="100"></td>
        <td id="LC100" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L101" class="blob-num js-line-number" data-line-number="101"></td>
        <td id="LC101" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- --------------------------------------------------------</span></td>
      </tr>
      <tr>
        <td id="L102" class="blob-num js-line-number" data-line-number="102"></td>
        <td id="LC102" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L103" class="blob-num js-line-number" data-line-number="103"></td>
        <td id="LC103" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L104" class="blob-num js-line-number" data-line-number="104"></td>
        <td id="LC104" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Table structure for table `user_pokemon`</span></td>
      </tr>
      <tr>
        <td id="L105" class="blob-num js-line-number" data-line-number="105"></td>
        <td id="LC105" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L106" class="blob-num js-line-number" data-line-number="106"></td>
        <td id="LC106" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L107" class="blob-num js-line-number" data-line-number="107"></td>
        <td id="LC107" class="blob-code blob-code-inner js-file-line"><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">IF</span> NOT EXISTS <span class="pl-s"><span class="pl-pds">`</span>user_pokemon<span class="pl-pds">`</span></span> (</td>
      </tr>
      <tr>
        <td id="L108" class="blob-num js-line-number" data-line-number="108"></td>
        <td id="LC108" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>user_id<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L109" class="blob-num js-line-number" data-line-number="109"></td>
        <td id="LC109" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>pokemon_name<span class="pl-pds">`</span></span> <span class="pl-k">text</span> <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L110" class="blob-num js-line-number" data-line-number="110"></td>
        <td id="LC110" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>pokemon_health<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L111" class="blob-num js-line-number" data-line-number="111"></td>
        <td id="LC111" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>pokemon_attack<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span>,</td>
      </tr>
      <tr>
        <td id="L112" class="blob-num js-line-number" data-line-number="112"></td>
        <td id="LC112" class="blob-code blob-code-inner js-file-line">  <span class="pl-s"><span class="pl-pds">`</span>pokemon_id<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span></td>
      </tr>
      <tr>
        <td id="L113" class="blob-num js-line-number" data-line-number="113"></td>
        <td id="LC113" class="blob-code blob-code-inner js-file-line">) ENGINE<span class="pl-k">=</span>InnoDB DEFAULT CHARSET<span class="pl-k">=</span>latin1;</td>
      </tr>
      <tr>
        <td id="L114" class="blob-num js-line-number" data-line-number="114"></td>
        <td id="LC114" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L115" class="blob-num js-line-number" data-line-number="115"></td>
        <td id="LC115" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L116" class="blob-num js-line-number" data-line-number="116"></td>
        <td id="LC116" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Indexes for dumped tables</span></td>
      </tr>
      <tr>
        <td id="L117" class="blob-num js-line-number" data-line-number="117"></td>
        <td id="LC117" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L118" class="blob-num js-line-number" data-line-number="118"></td>
        <td id="LC118" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L119" class="blob-num js-line-number" data-line-number="119"></td>
        <td id="LC119" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L120" class="blob-num js-line-number" data-line-number="120"></td>
        <td id="LC120" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Indexes for table `moves`</span></td>
      </tr>
      <tr>
        <td id="L121" class="blob-num js-line-number" data-line-number="121"></td>
        <td id="LC121" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L122" class="blob-num js-line-number" data-line-number="122"></td>
        <td id="LC122" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ALTER</span> <span class="pl-k">TABLE</span> <span class="pl-s"><span class="pl-pds">`</span>moves<span class="pl-pds">`</span></span></td>
      </tr>
      <tr>
        <td id="L123" class="blob-num js-line-number" data-line-number="123"></td>
        <td id="LC123" class="blob-code blob-code-inner js-file-line"> ADD <span class="pl-k">PRIMARY KEY</span> (<span class="pl-s"><span class="pl-pds">`</span>attack_type_pk<span class="pl-pds">`</span></span>);</td>
      </tr>
      <tr>
        <td id="L124" class="blob-num js-line-number" data-line-number="124"></td>
        <td id="LC124" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L125" class="blob-num js-line-number" data-line-number="125"></td>
        <td id="LC125" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L126" class="blob-num js-line-number" data-line-number="126"></td>
        <td id="LC126" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Indexes for table `pokemon`</span></td>
      </tr>
      <tr>
        <td id="L127" class="blob-num js-line-number" data-line-number="127"></td>
        <td id="LC127" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L128" class="blob-num js-line-number" data-line-number="128"></td>
        <td id="LC128" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ALTER</span> <span class="pl-k">TABLE</span> <span class="pl-s"><span class="pl-pds">`</span>pokemon<span class="pl-pds">`</span></span></td>
      </tr>
      <tr>
        <td id="L129" class="blob-num js-line-number" data-line-number="129"></td>
        <td id="LC129" class="blob-code blob-code-inner js-file-line"> ADD <span class="pl-k">PRIMARY KEY</span> (<span class="pl-s"><span class="pl-pds">`</span>pokemon_id<span class="pl-pds">`</span></span>), ADD KEY <span class="pl-s"><span class="pl-pds">`</span>pokemon_type<span class="pl-pds">`</span></span> (<span class="pl-s"><span class="pl-pds">`</span>pokemon_type<span class="pl-pds">`</span></span>);</td>
      </tr>
      <tr>
        <td id="L130" class="blob-num js-line-number" data-line-number="130"></td>
        <td id="LC130" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L131" class="blob-num js-line-number" data-line-number="131"></td>
        <td id="LC131" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L132" class="blob-num js-line-number" data-line-number="132"></td>
        <td id="LC132" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Indexes for table `user`</span></td>
      </tr>
      <tr>
        <td id="L133" class="blob-num js-line-number" data-line-number="133"></td>
        <td id="LC133" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L134" class="blob-num js-line-number" data-line-number="134"></td>
        <td id="LC134" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ALTER</span> <span class="pl-k">TABLE</span> <span class="pl-s"><span class="pl-pds">`</span>user<span class="pl-pds">`</span></span></td>
      </tr>
      <tr>
        <td id="L135" class="blob-num js-line-number" data-line-number="135"></td>
        <td id="LC135" class="blob-code blob-code-inner js-file-line"> ADD KEY <span class="pl-s"><span class="pl-pds">`</span>user_pokemon_fk<span class="pl-pds">`</span></span> (<span class="pl-s"><span class="pl-pds">`</span>user_pokemon_fk<span class="pl-pds">`</span></span>);</td>
      </tr>
      <tr>
        <td id="L136" class="blob-num js-line-number" data-line-number="136"></td>
        <td id="LC136" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L137" class="blob-num js-line-number" data-line-number="137"></td>
        <td id="LC137" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L138" class="blob-num js-line-number" data-line-number="138"></td>
        <td id="LC138" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- AUTO_INCREMENT for dumped tables</span></td>
      </tr>
      <tr>
        <td id="L139" class="blob-num js-line-number" data-line-number="139"></td>
        <td id="LC139" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L140" class="blob-num js-line-number" data-line-number="140"></td>
        <td id="LC140" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L141" class="blob-num js-line-number" data-line-number="141"></td>
        <td id="LC141" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L142" class="blob-num js-line-number" data-line-number="142"></td>
        <td id="LC142" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- AUTO_INCREMENT for table `pokemon`</span></td>
      </tr>
      <tr>
        <td id="L143" class="blob-num js-line-number" data-line-number="143"></td>
        <td id="LC143" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L144" class="blob-num js-line-number" data-line-number="144"></td>
        <td id="LC144" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ALTER</span> <span class="pl-k">TABLE</span> <span class="pl-s"><span class="pl-pds">`</span>pokemon<span class="pl-pds">`</span></span></td>
      </tr>
      <tr>
        <td id="L145" class="blob-num js-line-number" data-line-number="145"></td>
        <td id="LC145" class="blob-code blob-code-inner js-file-line">MODIFY <span class="pl-s"><span class="pl-pds">`</span>pokemon_id<span class="pl-pds">`</span></span> <span class="pl-k">int</span>(<span class="pl-c1">11</span>) <span class="pl-k">NOT NULL</span> AUTO_INCREMENT,AUTO_INCREMENT<span class="pl-k">=</span><span class="pl-c1">10</span>;</td>
      </tr>
      <tr>
        <td id="L146" class="blob-num js-line-number" data-line-number="146"></td>
        <td id="LC146" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L147" class="blob-num js-line-number" data-line-number="147"></td>
        <td id="LC147" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Constraints for dumped tables</span></td>
      </tr>
      <tr>
        <td id="L148" class="blob-num js-line-number" data-line-number="148"></td>
        <td id="LC148" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L149" class="blob-num js-line-number" data-line-number="149"></td>
        <td id="LC149" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L150" class="blob-num js-line-number" data-line-number="150"></td>
        <td id="LC150" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L151" class="blob-num js-line-number" data-line-number="151"></td>
        <td id="LC151" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Constraints for table `pokemon`</span></td>
      </tr>
      <tr>
        <td id="L152" class="blob-num js-line-number" data-line-number="152"></td>
        <td id="LC152" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L153" class="blob-num js-line-number" data-line-number="153"></td>
        <td id="LC153" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ALTER</span> <span class="pl-k">TABLE</span> <span class="pl-s"><span class="pl-pds">`</span>pokemon<span class="pl-pds">`</span></span></td>
      </tr>
      <tr>
        <td id="L154" class="blob-num js-line-number" data-line-number="154"></td>
        <td id="LC154" class="blob-code blob-code-inner js-file-line">ADD <span class="pl-k">CONSTRAINT</span> <span class="pl-s"><span class="pl-pds">`</span>pokemon_ibfk_1<span class="pl-pds">`</span></span> <span class="pl-k">FOREIGN KEY</span> (<span class="pl-s"><span class="pl-pds">`</span>pokemon_type<span class="pl-pds">`</span></span>) <span class="pl-k">REFERENCES</span> <span class="pl-s"><span class="pl-pds">`</span>moves<span class="pl-pds">`</span></span> (<span class="pl-s"><span class="pl-pds">`</span>attack_type_pk<span class="pl-pds">`</span></span>);</td>
      </tr>
      <tr>
        <td id="L155" class="blob-num js-line-number" data-line-number="155"></td>
        <td id="LC155" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L156" class="blob-num js-line-number" data-line-number="156"></td>
        <td id="LC156" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L157" class="blob-num js-line-number" data-line-number="157"></td>
        <td id="LC157" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- Constraints for table `user`</span></td>
      </tr>
      <tr>
        <td id="L158" class="blob-num js-line-number" data-line-number="158"></td>
        <td id="LC158" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L159" class="blob-num js-line-number" data-line-number="159"></td>
        <td id="LC159" class="blob-code blob-code-inner js-file-line"><span class="pl-k">ALTER</span> <span class="pl-k">TABLE</span> <span class="pl-s"><span class="pl-pds">`</span>user<span class="pl-pds">`</span></span></td>
      </tr>
      <tr>
        <td id="L160" class="blob-num js-line-number" data-line-number="160"></td>
        <td id="LC160" class="blob-code blob-code-inner js-file-line">ADD <span class="pl-k">CONSTRAINT</span> <span class="pl-s"><span class="pl-pds">`</span>user_ibfk_1<span class="pl-pds">`</span></span> <span class="pl-k">FOREIGN KEY</span> (<span class="pl-s"><span class="pl-pds">`</span>user_pokemon_fk<span class="pl-pds">`</span></span>) <span class="pl-k">REFERENCES</span> <span class="pl-s"><span class="pl-pds">`</span>pokemon<span class="pl-pds">`</span></span> (<span class="pl-s"><span class="pl-pds">`</span>pokemon_id<span class="pl-pds">`</span></span>);</td>
      </tr>
      <tr>
        <td id="L161" class="blob-num js-line-number" data-line-number="161"></td>
        <td id="LC161" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L162" class="blob-num js-line-number" data-line-number="162"></td>
        <td id="LC162" class="blob-code blob-code-inner js-file-line"><span class="pl-c">/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */</span>;</td>
      </tr>
      <tr>
        <td id="L163" class="blob-num js-line-number" data-line-number="163"></td>
        <td id="LC163" class="blob-code blob-code-inner js-file-line"><span class="pl-c">/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */</span>;</td>
      </tr>
      <tr>
        <td id="L164" class="blob-num js-line-number" data-line-number="164"></td>
        <td id="LC164" class="blob-code blob-code-inner js-file-line"><span class="pl-c">/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */</span>;</td>
      </tr>
</table>

  </div>

</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="btn">Go</button>
</form></div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2015 <span title="0.05182s from github-fe123-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
    </ul>
  </div>
</div>


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder=""></textarea>
      <div class="suggester-container">
        <div class="suggester fullscreen-suggester js-suggester js-navigation-container"></div>
      </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    
    

    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x flash-close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-2c8ae50712a47d2b83d740cb875d55cdbbb3fdbccf303951cc6b7e63731e0c38.js"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-747277110ee545263834c3918a562a2dc155e610ea48c5808df3838c3325cd60.js"></script>
      
      

      <div class="js-socket-channel" data-channel="test:bmorris03"></div>

  </body>
</html>
