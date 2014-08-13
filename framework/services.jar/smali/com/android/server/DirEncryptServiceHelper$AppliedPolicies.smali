.class public final Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppliedPolicies"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPoliciesApplied()Z
    .locals 5

    .prologue
    .line 361
    new-instance v0, Ljava/io/File;

    const-string v3, "/efs/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .local v0, "policy":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .local v1, "policy2":Ljava/io/File;
    const/4 v2, 0x0

    .line 365
    .local v2, "result":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 367
    :goto_0
    return v2

    .line 365
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setPoliciesApplied()Z
    .locals 6

    .prologue
    .line 329
    new-instance v1, Ljava/io/File;

    const-string v3, "/efs/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .local v1, "policy":Ljava/io/File;
    const/4 v2, 0x1

    .line 332
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    const/4 v2, 0x1

    :goto_0
    move v3, v2

    .line 341
    :goto_1
    return v3

    .line 335
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    .line 336
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 644 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static setPoliciesRemoved()Z
    .locals 5

    .prologue
    .line 345
    new-instance v0, Ljava/io/File;

    const-string v3, "/efs/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .local v0, "policy":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/"

    const-string v4, "applied_sdcard_policies"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .local v1, "policy2":Ljava/io/File;
    const/4 v2, 0x1

    .line 349
    .local v2, "result":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 353
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 354
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    .line 357
    :cond_1
    return v2
.end method
