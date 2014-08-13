.class final Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$ActionBarButtonUpdateListener;
.super Ljava/lang/Object;
.source "GroupChangeOrderActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionBarButtonUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$ActionBarButtonUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$1;

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$ActionBarButtonUpdateListener;-><init>(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;)V

    return-void
.end method


# virtual methods
.method public onDoneButtonStateUpdated(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$ActionBarButtonUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;

    # invokes: Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->updateDoneButtonState(Z)V
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->access$100(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;Z)V

    .line 253
    return-void
.end method
