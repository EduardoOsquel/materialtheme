{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}
		<div class="html-preloader bg-light">
			<div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
				<span class="visually-hidden">Loading...</span>
			</div>
		</div>
	</main><!-- _pkp_structure_main -->

{* Sidebars *}
{*if empty($isFullWidth)}
	{capture assign="sidebarCode"}{call_hook name="Templates::Common::Sidebar"}{/capture}
	{if $sidebarCode}
		<div class="pkp_structure_sidebar left" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
			{$sidebarCode}
		</div><!-- pkp_sidebar.left -->
	{/if}
{/if*}

{if $requestedPage !== 'login' && $requestedPage !== 'user'}
	<footer class="_pkp_structure_footer_wrapper bg-dark text-light text-center text-lg-start" role="contentinfo">
		<a id="_pkp_content_footer"></a>
		<div class="_pkp_structure_footer">
			{if $pageFooter}
				<div class="_pkp_footer_content">
					{$pageFooter}
				</div>
			{/if}

			<!-- Copyright -->
			<div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
				© 2021 Copyright:
				<a class="text-white" href="{url page="about" op="aboutThisPublishingSystem"}">Open Journal Systems</a>
			</div>
			<!-- Copyright -->
		</div>
	</footer><!-- _pkp_structure_footer_wrapper -->
{/if}

{load_script context="frontend"}

{call_hook name="Templates::Common::Footer::PageFooter"}

</body>
</html>
