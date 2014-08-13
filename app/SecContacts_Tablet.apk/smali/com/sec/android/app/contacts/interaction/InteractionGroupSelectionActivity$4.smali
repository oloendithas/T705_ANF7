.class Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;
.super Ljava/lang/Object;
.source "InteractionGroupSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->actionbarsetup()Landroid/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

.field final synthetic val$mItems:Ljava/util/ArrayList;

.field final synthetic val$mSelectActionBarView:Landroid/view/View;

.field final synthetic val$mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Landroid/view/View;Landroid/widget/ListPopupWindow;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->val$mSelectActionBarView:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->val$mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;

    iput-object p4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->val$mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;->val$mSelectActionBarView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 422
    return-void
.end method
