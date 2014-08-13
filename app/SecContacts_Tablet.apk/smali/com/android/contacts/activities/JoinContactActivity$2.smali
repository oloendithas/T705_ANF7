.class Lcom/android/contacts/activities/JoinContactActivity$2;
.super Ljava/lang/Object;
.source "JoinContactActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnContactPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/JoinContactActivity;->setupActionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/JoinContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/JoinContactActivity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/contacts/activities/JoinContactActivity$2;->this$0:Lcom/android/contacts/activities/JoinContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateNewContactAction(Z)V
    .locals 0
    .param p1, "finishActivityonCreateComplete"    # Z

    .prologue
    .line 199
    return-void
.end method

.method public onEditContactAction(Landroid/net/Uri;)V
    .locals 0
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 203
    return-void
.end method

.method public onPickContactAction(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 187
    .local v0, "contactId":J
    iget-object v2, p0, Lcom/android/contacts/activities/JoinContactActivity$2;->this$0:Lcom/android/contacts/activities/JoinContactActivity;

    # invokes: Lcom/android/contacts/activities/JoinContactActivity;->joinAggregate(J)V
    invoke-static {v2, v0, v1}, Lcom/android/contacts/activities/JoinContactActivity;->access$000(Lcom/android/contacts/activities/JoinContactActivity;J)V

    .line 190
    .end local v0    # "contactId":J
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/JoinContactActivity$2;->this$0:Lcom/android/contacts/activities/JoinContactActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 191
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 195
    return-void
.end method
