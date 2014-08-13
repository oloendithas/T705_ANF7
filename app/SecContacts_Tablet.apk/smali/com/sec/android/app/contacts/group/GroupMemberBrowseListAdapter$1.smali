.class Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;
.super Ljava/lang/Object;
.source "GroupMemberBrowseListAdapter.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->createMenuWidgetFromView(Landroid/view/View;ILandroid/database/Cursor;Lcom/sec/android/app/contacts/group/GroupInfo;I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

.field final synthetic val$contactUri:Landroid/net/Uri;

.field final synthetic val$groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field final synthetic val$groupType:I

.field final synthetic val$itemPositon:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Landroid/net/Uri;ILcom/sec/android/app/contacts/group/GroupInfo;I)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$contactUri:Landroid/net/Uri;

    iput p3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$groupType:I

    iput-object p4, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    iput p5, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$itemPositon:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;ILjava/lang/Object;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "itemIndex"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 461
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$contactUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->getPhonenumber(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, "phoneNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$contactUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->getEmailAddress(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "emailAddress":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 465
    :pswitch_0
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$groupType:I

    if-ne v2, v4, :cond_1

    .line 466
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$contactUri:Landroid/net/Uri;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->addToGroup(Landroid/net/Uri;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$000(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Landroid/net/Uri;)V

    goto :goto_0

    .line 467
    :cond_1
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$groupType:I

    if-ne v2, v5, :cond_2

    .line 468
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$contactUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->removeMember(Landroid/net/Uri;Lcom/sec/android/app/contacts/group/GroupInfo;)V
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$100(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Landroid/net/Uri;Lcom/sec/android/app/contacts/group/GroupInfo;)V

    goto :goto_0

    .line 469
    :cond_2
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$groupType:I

    if-ne v2, v6, :cond_3

    .line 470
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # getter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$Listener;
    invoke-static {v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$200(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;)Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$Listener;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$itemPositon:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$Listener;->onCallForICERequested(I)V

    goto :goto_0

    .line 472
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # getter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsPhone:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$300(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 473
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->actionCall(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$400(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # getter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsSMSAvailable:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$500(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 475
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->sendMessage(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$600(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :cond_5
    if-eqz v0, :cond_0

    .line 477
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->sendEmail(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$700(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 482
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$groupType:I

    if-eq v2, v4, :cond_6

    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$groupType:I

    if-ne v2, v5, :cond_9

    .line 484
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # getter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsPhone:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$300(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 485
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->actionCall(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$400(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # getter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsSMSAvailable:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$500(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 487
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->sendMessage(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$600(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_8
    if-eqz v0, :cond_0

    .line 489
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->sendEmail(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$700(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    :cond_9
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$groupType:I

    if-ne v2, v6, :cond_c

    .line 492
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # getter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsSMSAvailable:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$500(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 493
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->sendMessage(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$600(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 494
    :cond_a
    if-eqz v0, :cond_b

    .line 495
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->sendEmail(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$700(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 497
    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$contactUri:Landroid/net/Uri;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->removeFromICE(Landroid/net/Uri;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$800(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 500
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # getter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsSMSAvailable:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$500(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_d

    .line 501
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->sendMessage(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$600(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 502
    :cond_d
    if-eqz v0, :cond_0

    .line 503
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->sendEmail(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$700(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 508
    :pswitch_2
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$groupType:I

    if-eq v2, v4, :cond_e

    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$groupType:I

    if-ne v2, v5, :cond_10

    .line 510
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # getter for: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->mIsSMSAvailable:Z
    invoke-static {v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$500(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v1, :cond_f

    .line 511
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->sendMessage(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$600(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 512
    :cond_f
    if-eqz v0, :cond_0

    .line 513
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->sendEmail(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$700(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 515
    :cond_10
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$groupType:I

    if-ne v2, v6, :cond_12

    .line 516
    if-eqz v0, :cond_11

    .line 517
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->sendEmail(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$700(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 519
    :cond_11
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$contactUri:Landroid/net/Uri;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->removeFromICE(Landroid/net/Uri;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$800(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 522
    :cond_12
    if-eqz v0, :cond_0

    .line 523
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->sendEmail(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$700(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 528
    :pswitch_3
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$groupType:I

    if-eq v2, v4, :cond_13

    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$groupType:I

    if-ne v2, v5, :cond_14

    .line 530
    :cond_13
    if-eqz v0, :cond_0

    .line 531
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->sendEmail(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$700(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 533
    :cond_14
    iget v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$groupType:I

    if-ne v2, v6, :cond_0

    .line 534
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter$1;->val$contactUri:Landroid/net/Uri;

    # invokes: Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->removeFromICE(Landroid/net/Uri;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;->access$800(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListAdapter;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
