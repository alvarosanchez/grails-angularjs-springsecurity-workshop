<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>Welcome to Grails</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <style type="text/css">
        [ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak {
            display: none !important;
        }
    </style>

    <asset:stylesheet src="application.css"/>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />

    <script type="text/javascript">
        window.contextPath = "${request.contextPath}";
    </script>
</head>

<body ng-app="todo" ng-controller="TodoController as vm">

    <div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" ng-click="navExpanded = !navExpanded">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/#">
                    <i class="fa grails-icon">
                        <asset:image src="grails-cupsonly-logo-white.svg"/>
                    </i> Grails
                </a>
            </div>
            <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;" uib-collapse="!navExpanded">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown" uib-dropdown>
                        <a href="#" class="dropdown-toggle" uib-dropdown-toggle role="button" aria-haspopup="true" aria-expanded="false">Application Status <span class="caret"></span></a>
                        <ul class="dropdown-menu" uib-dropdown-menu>
                            <li><a href="#">Environment: {{vm.applicationData.environment}}</a></li>
                            <li><a href="#">App profile: {{vm.applicationData.appprofile}}</a></li>
                            <li><a href="#">App version: {{vm.applicationData.appversion}}</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Grails version: {{vm.applicationData.grailsversion}}</a></li>
                            <li><a href="#">Groovy version: {{vm.applicationData.groovyversion}}</a></li>
                            <li><a href="#">JVM version: {{vm.applicationData.jvmversion}}</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Reloading active: {{vm.applicationData.reloadingagentenabled}}</a></li>
                        </ul>
                    </li>
                    <li class="dropdown" uib-dropdown>
                        <a href="#" class="dropdown-toggle" uib-dropdown-toggle role="button" aria-haspopup="true" aria-expanded="false">Artefacts <span class="caret"></span></a>
                        <ul class="dropdown-menu" uib-dropdown-menu>
                            <li><a href="#">Controllers: {{vm.applicationData.artefacts.controllers}}</a></li>
                            <li><a href="#">Domains: {{vm.applicationData.artefacts.domains}}</a></li>
                            <li><a href="#">Services: {{vm.applicationData.artefacts.services}}</a></li>
                        </ul>
                    </li>
                    <li class="dropdown" uib-dropdown>
                        <a href="#" class="dropdown-toggle" uib-dropdown-toggle role="button" aria-haspopup="true" aria-expanded="false">Installed Plugins <span class="caret"></span></a>
                        <ul class="dropdown-menu" uib-dropdown-menu>
                            <li ng-repeat="plugin in vm.applicationData.plugins"><a href="#">{{plugin.name}} - {{plugin.version}}</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="svg" role="presentation">
        <div class="grails-logo-container">
            <asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>
        </div>
    </div>

    <div id="content" role="main">
        <section class="row colset-2-its">
            <!-- Our code will be here -->
            <div ng-switch="vm.authenticated">
                <div ng-switch-when="true">
                    <div ng-include="'/todo/list.html'"></div>
                </div>
                <div ng-switch-when="false">
                    <div ng-include="'/todo/login.html'"></div>
                </div>
            </div>
        </section>
    </div>

    <div class="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="/todo/app.js" />
</body>
</html>
