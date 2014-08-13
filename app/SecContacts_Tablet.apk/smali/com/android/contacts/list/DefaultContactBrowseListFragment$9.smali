.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$9;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createCustomSearchbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$9;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$9;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    const/4 v0, 0x1

    .line 1335
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
