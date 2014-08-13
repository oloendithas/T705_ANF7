.class Lcom/sec/android/app/contacts/eab/EABContactsDaemon$1;
.super Landroid/database/ContentObserver;
.source "EABContactsDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$1;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 292
    const/4 v1, 0x0

    .line 294
    .local v1, "str_temp":Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 297
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "mobile_data"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The String value MOBILE_DATA  is  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$000(Ljava/lang/String;)V

    .line 302
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/sec/android/app/contacts/eab/EABContactsDaemon$1;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    # getter for: Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->access$100(Lcom/sec/android/app/contacts/eab/EABContactsDaemon;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "mobile_data"

    invoke-static {v2, v3, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    return-void
.end method
