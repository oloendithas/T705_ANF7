.class Lcom/android/contacts/activities/ContactEditorActivity$4;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactEditorActivity;->startAddaContactTutorial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity;)V
    .locals 0

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 1081
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    const v2, 0x7f0904db

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1082
    .local v0, "menuButton":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1083
    new-instance v1, Lcom/android/contacts/activities/ContactEditorActivity$4$1;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/activities/ContactEditorActivity$4$1;-><init>(Lcom/android/contacts/activities/ContactEditorActivity$4;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1165
    :cond_0
    return-void
.end method
