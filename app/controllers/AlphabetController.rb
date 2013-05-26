class AlphabetController < UIViewController
  def viewDidLoad
    super

    self.title = "Alphabet"

    @table = UITableView.alloc.initWithFrame(self.view.bounds)
    self.view.addSubview @table
    @table.dataSource = self
    @data = ("A".."Z").to_a
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    @reuseIdentifier ||= "CELL_INDENTIFIER"

    cell = tableView.dequeueReusableCellWithIdentifier(@reuseIndentifier) || begin
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:@reuseIdentifier)
    end
    cell.textLabel.text = @data[indexPath.row]

    cell
  end

  def tableView(tableView, numberOfRowsInSection: section)
    @data.count
  end
end