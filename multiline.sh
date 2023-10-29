# Multiline
cat <<EOF
Z = Zone()
Z.type = "A"
Z.content = "${ip}"
Z.name = "${name}
Z.ttl = 7200
Z.domain = Domain.objects.get(domain_name = "zeblato.net")
Z.save()
Z.domain.update_zones()
EOF

