.class Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberBrowseAdapterListener;
.super Ljava/lang/Object;
.source "GroupMemberBrowseListFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupMemberBrowseAdapterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V
    .locals 0

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberBrowseAdapterListener;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForICERequested(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    .line 1264
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberBrowseAdapterListener;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    .line 1265
    .local v0, "adapter":Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->isDefaultICE(I)Z

    move-result v3

    .line 1266
    .local v3, "isDefaultICE":Z
    if-eqz v3, :cond_0

    .line 1267
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v5

    .line 1268
    .local v5, "phoneNumber":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    const/4 v8, 0x0

    invoke-static {v7, v5, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1270
    .local v1, "callIntent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1271
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberBrowseAdapterListener;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->access$1100(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1277
    .end local v1    # "callIntent":Landroid/content/Intent;
    .end local v5    # "phoneNumber":Ljava/lang/String;
    :goto_0
    return-void

    .line 1273
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v4

    .line 1274
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v2

    .line 1275
    .local v2, "displayName":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$GroupMemberBrowseAdapterListener;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getPhoneNubmerAndCall(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v4, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->access$1200(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
