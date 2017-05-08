# UIScrollView

## 概要
UIScrollViewはWindowのサイズより大きなコンテンツを表示するViewを管理するクラスです。

## 関連クラス
UIView

## 主要プロパティ

| プロパティ名 | 説明 | サンプル |
|-----------|------------|------------|
| scrollsToTop | scroll-to-topをさせるかどうか | scrollView.scrollsToTop |
| showsHorizontalScrollIndicator | 水平方向のScrollIndicatorを表示するかどうか | scrollView.showsHorizontalScrollIndicator |
| showsVerticalScrollIndicator | 垂直方向のScrollIndicatorを表示するかどうか | scrollView.showsVerticalScrollIndicator |
| isPagingEnabled | ページングするかどうか | scrollView.isPagingEnabled |

## 主要Delegateメソッド

| メソッド名 | 説明 |
|-----------|------------|
| scrollViewDidEndDecelerating(_:) | スクロール停止時に呼び出される |
| scrollViewDidScroll(_:) | スクロールした時に呼ばれる（何度も呼ばれるので重い処理しないように注意） |
| scrollViewDidEndDragging(_:willDecelerate:) | スクロールビューのドラッグが終わった呼ばれる |

## ページング可能なScrollViewをAuto Layoutで実装する方法
下記リンク先参照  
http://qiita.com/kazuhiro4949/items/afb8738f70100f5665c0

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/uikit/uiscrollview

# UIPageControl

## 概要
UIPageControlはドキュメントまたは他のデータのモデルエンティティのページを管理するクラスです。

## 主要プロパティ

| プロパティ名 | 説明 | サンプル |
|-----------|------------|------------|
| currentPage | 現在のページ | pageControl.currentPage |
| hidesForSinglePage | ページが1つしか無いときにpageControlを非表示にするかどうか | pageControl.hidesForSinglePage |
| numberOfPages | ページの表示数 | pageControl.numberOfPages |

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
| Category | Version |
|:-----------:|:------------:|
| Swift | 3.0.2 |
| Xcode | 8.2.1 |
| iOS | 10.0~ |

## 参考
https://developer.apple.com/reference/uikit/uipagecontrol
