.class Lcom/android/systemui/recent/RecentsHorizontalScrollView$12;
.super Landroid/database/DataSetObserver;
.source "RecentsHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$12;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$12;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    # invokes: Lcom/android/systemui/recent/RecentsHorizontalScrollView;->update()V
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->access$300(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    .line 480
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$12;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    # invokes: Lcom/android/systemui/recent/RecentsHorizontalScrollView;->update()V
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->access$300(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    .line 484
    return-void
.end method
