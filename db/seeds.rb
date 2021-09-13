a1 = Author.create(name: "John Smith")
a2 = Author.create(name: "Susan Strong")
a3 = Author.create(name: "Lark Greenwood")

p1 = Post.new(title: "Know Your National Parks")
p1.author = a1
p1.save
p2 = Post.new(title: "How To Get A Man In 10 Days")
p2.author = a2
p2.save
p3 = Post.new(title: "Gender and Fashion pt. I")
p3.author = a3
p3.save

com1 = Comment.new(content: "My biggest adventure yet was to bring you all these park tips and tricks! blah blah blah...")
com1.author_id = a1.id
com1.post_id = p1.id
com1.save
com2 = Comment.new(content: "Get you a man so fast with my tips!")
com2.author_id = a2.id
com2.post_id = p2.id
com2.save
com3 = Comment.new(content: "My next post will have the pt. II - keep your eyes peeled!")
com3.author_id = a3.id
com3.post_id = p3.id
com3.save