.class Lcom/android/contacts/list/ContactEntryListFragment$H;
.super Landroid/os/Handler;
.source "ContactEntryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactEntryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final SECRET_MODE_CHANGED:I = 0x64


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactEntryListFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/ContactEntryListFragment;)V
    .locals 0

    .prologue
    .line 399
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment$H;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>.H;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment$H;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/ContactEntryListFragment;Lcom/android/contacts/list/ContactEntryListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/list/ContactEntryListFragment;
    .param p2, "x1"    # Lcom/android/contacts/list/ContactEntryListFragment$1;

    .prologue
    .line 399
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment$H;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>.H;"
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment$H;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 403
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment$H;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>.H;"
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 409
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 410
    return-void

    .line 406
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment$H;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    const/4 v1, 0x1

    # invokes: Lcom/android/contacts/list/ContactEntryListFragment;->startFullQuery(Z)V
    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->access$100(Lcom/android/contacts/list/ContactEntryListFragment;Z)V

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
