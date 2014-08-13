.class Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$7;
.super Ljava/lang/Object;
.source "GroupMemberBrowseListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->onItemClick(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$7;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$7;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 801
    packed-switch p2, :pswitch_data_0

    .line 811
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 803
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$7;->val$phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$7;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$7;->val$phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->startCallIntentAndFinishActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 801
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
