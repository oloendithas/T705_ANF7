.class Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;
.super Landroid/database/ContentObserver;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateFormatObserver"
.end annotation


# instance fields
.field mWeakRefFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 1
    .param p1, "aFragment"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 1319
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;->mWeakRefFragment:Ljava/lang/ref/WeakReference;

    .line 1320
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;->mWeakRefFragment:Ljava/lang/ref/WeakReference;

    .line 1321
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;->mWeakRefFragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;->mWeakRefFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;->mWeakRefFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DateFormatObserver;->mWeakRefFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 1329
    :cond_0
    return-void
.end method
