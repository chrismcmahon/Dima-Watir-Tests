Given("I transform an image") do
  on(DimaPage).transform_link
end

Given("the image exists") do
  on(DimaPage).source_image_element.present?
end

When("I click grayscale") do
  on(DimaPage).check_grayscale
end

When("I rotate {string} degrees and resize {string}") do |deg, size|
  on(DimaPage) do |page|
    page.degrees_element.send_keys deg
    page.size_element.send_keys size
  end
end

When("I flip image vertically and horizontally") do
  on(DimaPage) do |page|
    page.check_vert
    page.check_horiz
  end
end

When("I persist the image") do
  on(DimaPage) do |page|
    page.check_persist
    page.name_element.send_keys "automated #{@random_string}"
    page.submit_element.click!
  end
end

Then("I should see the transformed image") do
  on(DimaPage) do |page|
    page.transformed_image_element.when_present(10)
    expect(page.transformed_image_element.present?).to be true
  end
end

When("Pause {string}") do |msg|
  $stdout.puts "\e[31m#{msg}.\e[0m\n"
  @prompt.yes?('Continue?')
end
