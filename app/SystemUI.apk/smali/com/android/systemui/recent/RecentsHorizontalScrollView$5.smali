.class Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;
.super Ljava/lang/Object;
.source "RecentsHorizontalScrollView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsHorizontalScrollView;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

.field final synthetic val$holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

.field final synthetic val$zoomIn:Landroid/view/animation/Animation;

.field final synthetic val$zoomOut:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;->val$holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iput-object p3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;->val$zoomIn:Landroid/view/animation/Animation;

    iput-object p4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;->val$zoomOut:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 182
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 184
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;->val$holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;->val$zoomIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 189
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;->val$holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;->val$zoomOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
