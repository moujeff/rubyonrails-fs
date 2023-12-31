class ProductDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      # name: { source: "User.name", cond: :like }
      id: {source: "Product.id"},
      name: {source: "Product.name", searchable: true, cond: :like},
      category: {source: "Product.category", searchable: true},
      description: {source: "Product.description", searchable: true},
      price: {source: "Product.price", searchable: true},
    }
  end

  def data
    records.map do |record|
      {
        id: record.id,
        name: record.name,
        category: record.category,
        description: record.description,
        price: record.price,
      }
    end
  end

  def get_raw_records
    Product.all
  end

end
