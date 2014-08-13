.class Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$2;
.super Ljava/lang/Object;
.source "TiltToScrollListTutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->setActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->showGuideDialog()V

    .line 316
    return-void
.end method
