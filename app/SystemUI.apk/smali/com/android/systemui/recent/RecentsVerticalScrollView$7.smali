.class Lcom/android/systemui/recent/RecentsVerticalScrollView$7;
.super Ljava/lang/Object;
.source "RecentsVerticalScrollView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsVerticalScrollView;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 211
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    # getter for: Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->access$000(Lcom/android/systemui/recent/RecentsVerticalScrollView;)Lcom/android/systemui/recent/RecentsCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/recent/RecentsCallback;->dismiss()V

    .line 213
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
