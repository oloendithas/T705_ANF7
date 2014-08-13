.class Lcom/sec/android/app/contacts/list/PopupList$3;
.super Ljava/lang/Object;
.source "PopupList.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/PopupList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/PopupList;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/PopupList$3;->this$0:Lcom/sec/android/app/contacts/list/PopupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList$3;->this$0:Lcom/sec/android/app/contacts/list/PopupList;

    # getter for: Lcom/sec/android/app/contacts/list/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/PopupList;->access$000(Lcom/sec/android/app/contacts/list/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList$3;->this$0:Lcom/sec/android/app/contacts/list/PopupList;

    # invokes: Lcom/sec/android/app/contacts/list/PopupList;->updatePopupLayoutParams()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/PopupList;->access$400(Lcom/sec/android/app/contacts/list/PopupList;)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList$3;->this$0:Lcom/sec/android/app/contacts/list/PopupList;

    # getter for: Lcom/sec/android/app/contacts/list/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/PopupList;->access$000(Lcom/sec/android/app/contacts/list/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    goto :goto_0
.end method
