# frozen_string_literal: true

RSpec.describe 'ReloadAttribute' do
  subject { create(:widget) }

  it 'can reload attributes from the database' do
    new_values = {
      foo: 'Some new foo value',
      bar: 456,
    }
    attrs = new_values.keys
    old_values = subject.slice(*attrs).symbolize_keys
    Widget.find(subject.id).update(new_values)
    expect(old_values).to_not eq new_values
    subject.reload_attribute(*attrs)
    expect(subject.slice(*attrs).symbolize_keys).to_not eq old_values
    expect(subject.slice(*attrs).symbolize_keys).to eq new_values
  end
end
