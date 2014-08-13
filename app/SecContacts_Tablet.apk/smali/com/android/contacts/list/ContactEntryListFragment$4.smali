.class Lcom/android/contacts/list/ContactEntryListFragment$4;
.super Ljava/lang/Object;
.source "ContactEntryListFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/ContactCursorLoader$OnLoadCanceledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactEntryListFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactEntryListFragment;)V
    .locals 0

    .prologue
    .line 804
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment$4;, "Lcom/android/contacts/list/ContactEntryListFragment.4;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment$4;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCanceled()V
    .locals 2

    .prologue
    .line 807
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment$4;, "Lcom/android/contacts/list/ContactEntryListFragment.4;"
    const-string v0, "ContactEntryListFragment"

    const-string v1, "onLoadCanceled() is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment$4;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/list/ContactEntryListFragment;->mIsLoadCanceledOnStop:Z
    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->access$302(Lcom/android/contacts/list/ContactEntryListFragment;Z)Z

    .line 810
    return-void
.end method
