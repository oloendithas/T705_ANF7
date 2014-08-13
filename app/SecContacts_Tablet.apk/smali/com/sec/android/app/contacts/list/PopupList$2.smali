.class Lcom/sec/android/app/contacts/list/PopupList$2;
.super Ljava/lang/Object;
.source "PopupList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 129
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/PopupList$2;->this$0:Lcom/sec/android/app/contacts/list/PopupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList$2;->this$0:Lcom/sec/android/app/contacts/list/PopupList;

    # getter for: Lcom/sec/android/app/contacts/list/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/PopupList;->access$000(Lcom/sec/android/app/contacts/list/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList$2;->this$0:Lcom/sec/android/app/contacts/list/PopupList;

    # getter for: Lcom/sec/android/app/contacts/list/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/PopupList;->access$000(Lcom/sec/android/app/contacts/list/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList$2;->this$0:Lcom/sec/android/app/contacts/list/PopupList;

    # getter for: Lcom/sec/android/app/contacts/list/PopupList;->mOnPopupItemClickListener:Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/PopupList;->access$300(Lcom/sec/android/app/contacts/list/PopupList;)Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList$2;->this$0:Lcom/sec/android/app/contacts/list/PopupList;

    # getter for: Lcom/sec/android/app/contacts/list/PopupList;->mOnPopupItemClickListener:Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/PopupList;->access$300(Lcom/sec/android/app/contacts/list/PopupList;)Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;

    move-result-object v0

    long-to-int v1, p4

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;->onPopupItemClick(I)Z

    goto :goto_0
.end method
