//
//  ViewController.swift
//  ios-uikit-uiscrollview-demo
//
//  Created by Kentaro on 2017/03/06.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet fileprivate weak var scrollView: UIScrollView!
    @IBOutlet fileprivate weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        // ページごとのスクロールをやめる
        scrollView.isPagingEnabled = false
        
    }
    
    
    // pageControllタップ時のアクション
    @IBAction private func didTapPageControl(_ sender: UIPageControl) {
        // scrollViewの位置も変える
        scrollView.contentOffset = CGPoint(x: scrollView.frame.size.width * CGFloat(sender.currentPage), y: 0)
    }
    
    @IBAction func pushLeftToolbarButton(_ sender: UIBarButtonItem) {
        let currentPage =  pageControl.currentPage

        // 1マイナスして0より小さくなる場合戻す
        if currentPage - 1 < 0 {
            return
        }
        
        // 現在ページから1マイナスしたページを現在ページとする
        pageControl.currentPage = currentPage - 1
        
        // スクロール位置も現在地に変更
        scrollView.contentOffset = CGPoint(x: scrollView.frame.size.width * CGFloat(pageControl.currentPage), y: 0)
    }
    
    @IBAction func pushRightToolbarButton(_ sender: UIBarButtonItem) {
        let currentPage =  pageControl.currentPage
        
        // 1プラスしてページの最大値より大きくなる場合戻す
        if currentPage + 1 > pageControl.numberOfPages {
            return
        }

        // 現在ページから1プラスしたページを現在ページとする
        pageControl.currentPage = currentPage + 1

        // スクロール位置も現在地に変更
        scrollView.contentOffset = CGPoint(x: scrollView.frame.size.width * CGFloat(pageControl.currentPage), y: 0)
    }
}

// MARK: - UIScrollViewDelegate

extension ViewController: UIScrollViewDelegate {
    
    // スクロール停止時に呼び出される
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        // pageControllのページを更新する
        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.maxX)
    }
}
