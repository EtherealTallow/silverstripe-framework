<div class="cms-navigator">

	<% include SilverStripe\\Admin\\LeftAndMain_ViewModeSelector SelectID="preview-mode-dropdown-in-preview" %>

    <span id="preview-size-dropdown" class="preview-size-selector preview-selector field dropdown">
		<select title="<%t SilverStripeNavigator.ViewDeviceWidth 'Select a preview width' %>" id="preview-size-dropdown-select" class="preview-dropdown dropdown form-group--no-label" autocomplete="off" name="Action">
			<option data-icon="font-icon-resize" data-description="<%t SilverStripeNavigator.Responsive 'Responsive' %>" class="font-icon-resize icon-view first" value="auto">
				<%t SilverStripeNavigator.Auto 'Auto' %>
			</option>
			<option data-icon="font-icon-monitor" data-description="1024px <%t SilverStripeNavigator.Width 'width' %>" class="font-icon-monitor icon-view" value="desktop">
				<%t SilverStripeNavigator.Desktop 'Desktop' %>
			</option>
			<option data-icon="font-icon-tablet" data-description="800px <%t SilverStripeNavigator.Width 'width' %>" class="font-icon-tablet icon-view" value="tablet">
				<%t SilverStripeNavigator.Tablet 'Tablet' %>
			</option>
			<option data-icon="font-icon-mobile" data-description="400px <%t SilverStripeNavigator.Width 'width' %>" class="font-icon-mobile icon-view last" value="mobile">
				<%t SilverStripeNavigator.Mobile 'Mobile' %>
			</option>
		</select>
	</span>

	<% if $Items %>
		<% if $Items.Count < 5 %>
			<div id="preview-states" class="cms-preview-states switch-states size_{$Items.Count}">
				<div class="switch">
					<% loop $Items %>
						<a  href="$Link" id="$Title" data-name="$Name" class="state-name $FirstLast<% if $isActive %> active<% end_if %>">
							<span>$Title</span>
						</a>
					<% end_loop %>
				</div>
			</div>
		<% else %>
			<span id="preview-state-dropdown" class="cms-preview-states field dropdown">
				<select title="<%t SilverStripeNavigator.PreviewState 'Preview State' %>" id="preview-states" class="preview-state dropdown form-group--no-label" autocomplete="off" name="preview-state">
					<% loop $Items %>
					<option name="$Name" data-name="$Name" data-link="$Link" class="state-name $FirstLast" value="$Link" <% if $isActive %>selected<% end_if %>>
						$Title
					</option>
					<% end_loop %>
				</select>
			</span>
		<% end_if %>
	<% end_if %>
</div>
