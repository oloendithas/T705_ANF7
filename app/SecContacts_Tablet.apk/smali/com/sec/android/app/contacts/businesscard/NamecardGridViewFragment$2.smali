.class Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$2;
.super Ljava/lang/Object;
.source "NamecardGridViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->configureEmptyView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$2;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 416
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$2;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 417
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$2;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$800(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 420
    :cond_0
    return-void
.end method
