.class Lcom/android/contacts/activities/DialtactsActivity$16;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 2791
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$16;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchButtonPressed()V
    .locals 1

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$16;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # invokes: Lcom/android/contacts/activities/DialtactsActivity;->enterSearchUi()V
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$3400(Lcom/android/contacts/activities/DialtactsActivity;)V

    .line 2795
    return-void
.end method
