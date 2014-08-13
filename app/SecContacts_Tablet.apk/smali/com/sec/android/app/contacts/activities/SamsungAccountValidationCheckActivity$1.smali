.class Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$1;
.super Ljava/lang/Object;
.source "SamsungAccountValidationCheckActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;->access$000(Lcom/sec/android/app/contacts/activities/SamsungAccountValidationCheckActivity;I)V

    .line 119
    return-void
.end method
