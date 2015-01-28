Note.destroy_all

# Note.create(title: "The first note", body: StickyNote.new(content: "I am a note!"))
# Note.create(title: "The second note", body: StickyNote.new(content: "I am a note, too!"))
# Note.create(title: "The third note", body: StickyNote.new(content: "I am a note, three!"))

Note.create([
    {
      title: 'a simple note',
      body: StickyNote.new(content: "Don't gorget to make a list")
    },
    {
      title: 'A more complex todo list',
      body: TodoList.new(
        todo_items: [
          TodoItem.new(title: 'make a second todo item', complete: true),
          TodoItem.new(title: 'Make another todo list', complete: false),
          TodoItem.new(title: 'DSICO PARTY!', complete: false)
        ]
      )
    }
  ])
