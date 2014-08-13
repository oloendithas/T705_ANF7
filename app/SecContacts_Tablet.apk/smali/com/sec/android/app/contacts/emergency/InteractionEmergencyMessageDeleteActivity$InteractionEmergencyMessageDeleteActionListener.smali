.class final Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity$InteractionEmergencyMessageDeleteActionListener;
.super Ljava/lang/Object;
.source "InteractionEmergencyMessageDeleteActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InteractionEmergencyMessageDeleteActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity$InteractionEmergencyMessageDeleteActionListener;->this$0:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity$1;

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity$InteractionEmergencyMessageDeleteActionListener;-><init>(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;)V

    return-void
.end method


# virtual methods
.method public onAllDataDeleted()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public onAllDataSelected(IZ)V
    .locals 0
    .param p1, "selectedCount"    # I
    .param p2, "isAll"    # Z

    .prologue
    .line 354
    return-void
.end method

.method public onCancelAction()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public onInteractionPickerAction(Landroid/net/Uri;)V
    .locals 0
    .param p1, "dataUri"    # Landroid/net/Uri;

    .prologue
    .line 303
    return-void
.end method

.method public onOneDataInputed()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public onPickContactAction(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onPickDataAction(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onPickGroupDataAction(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onPickSpeedDialAction(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 335
    return-void
.end method

.method public onPickSpeedDialAction(Landroid/net/Uri;J)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataid"    # J

    .prologue
    .line 339
    return-void
.end method

.method public onRecentListAction(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 315
    return-void
.end method

.method public onRevertAction()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public onSelected(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 343
    if-lez p1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity$InteractionEmergencyMessageDeleteActionListener;->this$0:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mDoneButtonClickable:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->access$102(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;Z)Z

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity$InteractionEmergencyMessageDeleteActionListener;->this$0:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;

    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity$InteractionEmergencyMessageDeleteActionListener;->this$0:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;

    # getter for: Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mDoneButtonClickable:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->access$100(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;)Z

    move-result v1

    # invokes: Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->setDoneButtonClickable(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->access$200(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;Z)V

    .line 350
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity$InteractionEmergencyMessageDeleteActionListener;->this$0:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->mDoneButtonClickable:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;->access$102(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageDeleteActivity;Z)Z

    goto :goto_0
.end method

.method public onSelectedAction(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "rgData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method
