.class Lcom/android/contacts/list/NamecardListFragment$1;
.super Ljava/lang/Object;
.source "NamecardListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/NamecardListFragment;->createCustomSearchbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/NamecardListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/NamecardListFragment;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/contacts/list/NamecardListFragment$1;->this$0:Lcom/android/contacts/list/NamecardListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/contacts/list/NamecardListFragment$1;->this$0:Lcom/android/contacts/list/NamecardListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/NamecardListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 305
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/contacts/list/NamecardListFragment$1;->this$0:Lcom/android/contacts/list/NamecardListFragment;

    # invokes: Lcom/android/contacts/list/NamecardListFragment;->requestSearchViewFocus(Landroid/app/Activity;)V
    invoke-static {v1, v0}, Lcom/android/contacts/list/NamecardListFragment;->access$000(Lcom/android/contacts/list/NamecardListFragment;Landroid/app/Activity;)V

    .line 308
    :cond_0
    return-void
.end method
