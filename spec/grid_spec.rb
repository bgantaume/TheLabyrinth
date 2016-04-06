require 'grid'

RSpec.describe Grid do
  it 'should load the ASCII table' do

    grid = Grid.new(4, 6)
    grid.feed "###???"
    grid.feed "#.T.??"
    grid.feed "#??C.#"
    grid.feed "??????"

    expect(grid.at(1,1)).to eq '#'
    expect(grid.at(2,3)).to eq 'T'
    expect(grid.at(2,2)).to eq '.'
    expect(grid.at(3,4)).to eq 'C'

  end

end
