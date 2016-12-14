require "rails_helper"

RSpec.feature "Deleting an Article" do

  before do
    @article = Article.create(title: "The article", body: "Editing danger...")
  end

  scenario "A user deletes an article" do
    visit "/"

    click_link @article.title
    click_link "Delete Article"


# click_button "Update Article"

    expect(page).to have_content("Article has been deleted")
    expect(page.current_path).to eq(articles_path)
  end
end
