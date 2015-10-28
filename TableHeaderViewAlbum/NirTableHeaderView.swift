//
//  NirTableHeaderView.swift
//  TableHeaderViewAlbum
//
//  Created by Nirvana on 10/28/15.
//  Copyright © 2015 NSNirvana. All rights reserved.
//

import UIKit

class NirTableHeaderView: UIView {

    private var nirSubview: UIView?
    private var nirScrollview: UIScrollView?
    private var type = 0
    
    var tableView: UITableView?
    var maximumOffsetY: Int?
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init(subview: UIView, andType type: Int) {
        super.init(frame: subview.frame)
        
        self.initialSetupForCustomSubView(subview, type: type)
    }
    
    func initialSetupForCustomSubView(subview: UIView, type: Int) {
        self.type = type
        
        self.nirSubview = subview
        self.nirSubview!.autoresizingMask = [.FlexibleLeftMargin, .FlexibleRightMargin, .FlexibleTopMargin, .FlexibleBottomMargin, .FlexibleHeight, .FlexibleWidth]
        
        let scrollView = UIScrollView(frame: self.bounds)
        self.nirScrollview = scrollView

        assert(nirSubview != nil, "nirSubView initialize failed")
        assert(nirScrollview != nil, "nirScrollView initialize failed")
        
        nirScrollview!.addSubview(nirSubview!)
        self.addSubview(nirScrollview!)
    }
    
    func layoutHeaderViewForScrollViewOffset(offset: CGPoint) {
        if (false)
        {
            
        }
        else
        {
            var delta: CGFloat = 0
            var rect = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)
            
            delta = offset.y
            rect.origin.y += delta
            rect.size.height -= delta
            
            self.nirScrollview!.frame = rect
            self.clipsToBounds = false
        }
    }
}










