.class Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$2;
.super Ljava/lang/Object;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

.field final synthetic val$checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field final synthetic val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    .prologue
    .line 944
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$2;->this$1:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    iput-object p2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$2;->val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    iput-object p3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$2;->val$checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$2;->val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    if-eqz v0, :cond_1

    .line 948
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$2;->val$checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    .line 949
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$2;->this$1:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    # getter for: Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->access$300(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$2;->val$checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$2;->val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$2;->val$checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->putVisible(Z)V

    .line 956
    :goto_0
    return-void

    .line 954
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter$2;->this$1:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    iget-object v0, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->openContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method
