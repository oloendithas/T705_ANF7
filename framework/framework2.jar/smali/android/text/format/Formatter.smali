.class public final Landroid/text/format/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # J

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # J
    .param p3, "shorter"    # Z

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x44800000

    const/high16 v4, 0x44610000

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 51
    if-nez p0, :cond_c

    .line 52
    const-string v3, ""

    .line 102
    :goto_b
    return-object v3

    .line 55
    :cond_c
    long-to-float v0, p1

    .line 56
    .local v0, "result":F
    const v1, 0x104011d

    .line 57
    .local v1, "suffix":I
    cmpl-float v3, v0, v4

    if-lez v3, :cond_18

    .line 58
    const v1, 0x104011e

    .line 59
    div-float/2addr v0, v5

    .line 61
    :cond_18
    cmpl-float v3, v0, v4

    if-lez v3, :cond_20

    .line 62
    const v1, 0x104011f

    .line 63
    div-float/2addr v0, v5

    .line 65
    :cond_20
    cmpl-float v3, v0, v4

    if-lez v3, :cond_28

    .line 66
    const v1, 0x1040120

    .line 67
    div-float/2addr v0, v5

    .line 69
    :cond_28
    cmpl-float v3, v0, v4

    if-lez v3, :cond_30

    .line 70
    const v1, 0x1040121

    .line 71
    div-float/2addr v0, v5

    .line 73
    :cond_30
    cmpl-float v3, v0, v4

    if-lez v3, :cond_38

    .line 74
    const v1, 0x1040122

    .line 75
    div-float/2addr v0, v5

    .line 78
    :cond_38
    const/high16 v3, 0x3f800000

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6c

    .line 79
    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "value":Ljava/lang/String;
    :goto_4c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    if-ne v3, v7, :cond_c7

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040123

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v2, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    .line 80
    .end local v2    # "value":Ljava/lang/String;
    :cond_6c
    const/high16 v3, 0x41200000

    cmpg-float v3, v0, v3

    if-gez v3, :cond_92

    .line 81
    if-eqz p3, :cond_83

    .line 82
    const-string v3, "%.1f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_4c

    .line 84
    .end local v2    # "value":Ljava/lang/String;
    :cond_83
    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_4c

    .line 86
    .end local v2    # "value":Ljava/lang/String;
    :cond_92
    const/high16 v3, 0x42c80000

    cmpg-float v3, v0, v3

    if-gez v3, :cond_b8

    .line 87
    if-eqz p3, :cond_a9

    .line 88
    const-string v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_4c

    .line 90
    .end local v2    # "value":Ljava/lang/String;
    :cond_a9
    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_4c

    .line 93
    .end local v2    # "value":Ljava/lang/String;
    :cond_b8
    const-string v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_4c

    .line 102
    :cond_c7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040123

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b
.end method

.method public static formatIpAddress(I)Ljava/lang/String;
    .registers 2
    .param p0, "ipv4Address"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    invoke-static {p0}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # J

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
