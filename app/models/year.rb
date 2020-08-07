class Year < ApplicationRecord
  class Category < ApplicationRecord
    self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '2000' },
    { id: 3, name: '2001' },
    { id: 4, name: '2002' },
    { id: 5, name: '2003' },
    { id: 6, name: '2004' },
    { id: 7, name: '2005' },
    { id: 8, name: '2006' },
    { id: 9, name: '2007' },
    { id: 10, name: '2008' }
    ]
  end
  
end
