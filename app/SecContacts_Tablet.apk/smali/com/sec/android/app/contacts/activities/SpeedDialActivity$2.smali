.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$2;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # invokes: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->checkRemoveButtonEnable()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    .line 420
    return-void
.end method
