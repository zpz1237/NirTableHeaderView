# NirTableHeaderView
简单实用的 tableHeaderView Parallax效果

### 用法
#### 类型零
        let headerView = NirTableHeaderView(subview: imgView, andType: 0)
![effect0](https://github.com/zpz1237/NirTableHeaderView/blob/master/effect0.gif)

最常用的ParallaxTableHeaderView效果
#### 类型一
        let headerView = NirTableHeaderView(subview: imgView, andType: 1)
![effect0](https://github.com/zpz1237/NirTableHeaderView/blob/master/effect1.gif)

也非常常用的ParallaxTableHeaderView效果
#### 类型二
        let headerView = NirTableHeaderView(subview: imgView, andType: 2)
![effect0](https://github.com/zpz1237/NirTableHeaderView/blob/master/effect2.gif)

不做调整的系统默认效果
#### 类型三
        let headerView = NirTableHeaderView(subview: imgView, andType: 3)
        headerView.tableView = self.tableView
        headerView.maximumOffsetY = -90
![effect0](https://github.com/zpz1237/NirTableHeaderView/blob/master/effect3.gif)

如果你想要设置滑动极限，需传入 tableView 以及 滑动极限值
#### 类型四
        let headerView = NirTableHeaderView(subview: imgView, andType: 4)
![effect0](https://github.com/zpz1237/NirTableHeaderView/blob/master/effect4.gif)

这种效果可以用来模拟可下拉的NavigationBar
