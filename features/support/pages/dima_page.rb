class DimaPage
  include PageObject

  a(:transform_link, text: /Transform your images/)
  img(:source_image, id: 'preview')
  checkbox(:grayscale, id: 'grayscale')
  text_field(:degrees, id: 'degrees')
  text_field(:size, id: 'factor')
  checkbox(:vert, id: 'vertical')
  checkbox(:horiz, id: 'horizontal')
  checkbox(:persist, id: 'persist')
  text_field(:name, id: 'name')
  img(:transformed_image, id:'transformedImage')
  button(:submit, class: ['btn', 'btn-primary', 'btn-block', 'dima-btn'])
  div(:container, class: 'container')
end
